#include <string.h>
#include <stdlib.h>
#include <msp430.h>
#include <math.h>

#include "driverlib.h"
#include "USB_config/descriptors.h"
#include "USB_API/USB_Common/device.h"
#include "USB_API/USB_Common/usb.h"
#include "USB_API/USB_CDC_API/UsbCdc.h"
#include "USB_app/usbConstructs.h"
#include "hal.h"

// DEFINES
#define MOSI		BIT0	// P3
#define	MISO		BIT1	// P3
#define SCLK		BIT2	// P3
#define START		BIT5	// P2
#define RESET		BIT4	// P2
#define DRDY		BIT5	// P1
#define CS			BIT4	// P1
#define LED_1		BIT0	// P1
#define	LED_STATUS	BIT3	// P1
#define LED_POWER	BIT2	// P1

// STRUCTS
typedef struct config {
	uint16_t start_bytes;
	uint8_t operation;
	uint8_t CONFIG1;
	uint8_t CONFIG2;
	uint8_t CONFIG3;
	uint8_t LOFF;
	uint8_t CH1SET;
	uint8_t CH2SET;
	uint8_t CH3SET;
	uint8_t CH4SET;
	uint8_t CH5SET;
	uint8_t CH6SET;
	uint8_t CH7SET;
	uint8_t CH8SET;
	uint8_t RLD_SENSP;
	uint8_t RLD_SENSN;
	uint8_t LOFF_SENSP;
	uint8_t LOFF_SENSN;
	uint8_t LOFF_FLIP;
	uint8_t LOFF_STATP;
	uint8_t LOFF_STATN;
	uint8_t GPIO;
	uint8_t PACE;
	uint8_t RESP;
	uint8_t CONFIG4;
	uint8_t WCT1;
	uint8_t WCT2;
} CONFIG;


// PROTOTYPES
uint8_t transferAndReceive(uint8_t transfer_buffer);
void wait_cycles(uint16_t);
void init_msp();
void init_adc();
void config_adc(uint8_t *curr_config);


// EXTERNAL EVENT VARIABLES
volatile uint8_t receive_status = FALSE;
volatile uint8_t receive_complete = FALSE;
volatile uint8_t send_complete = TRUE;


// INTERNAL VARIABLES
uint8_t SPI_received[27], SPI_transfer; // uinut8_t SPI_received[27] -> erhoehen da wir 2 ADSs benutzten
int t = 0;


// MAIN CODE
void main(void) {

	WDT_A_hold(WDT_A_BASE);			// Stop Watchdogtimer

	CONFIG current_configure = {0};

    PMM_setVCore(PMM_CORE_LEVEL_3); // Minimum Vcore setting required for the USB API is PMM_CORE_LEVEL_2
    USBHAL_initPorts();           	// Config GPIOS
    USBHAL_initClocks(15000000);   	// Config clocks. MCLK=SMCLK=FLL=8MHz; ACLK=REFO=32kHz
    USB_setup(TRUE,TRUE);  			// Init USB & events; if a host is present, connect

    init_msp();

    __enable_interrupt();  			// Enable interrupts globally

    init_adc();                     // -> init adc2?
    //config_adc(current_configure);

    while(1) {
    	switch(USB_getConnectionState()) {

    	// USB is connected and is active
    		case ST_ENUM_ACTIVE:
    			P1OUT |= LED_POWER;

    			if(receive_status) {
    				P1OUT |= LED_STATUS;
       				P2OUT &= ~START;
    				receive_status = FALSE; 	// Reset receive event

    				USBCDC_receiveData((uint8_t *)&current_configure, 28, CDC0_INTFNUM); // -> uint8_t USBCDC_receiveData (uint8_t* data, uint16_t size, uint8_t intfNum) change size

    				while(!receive_complete);
    				receive_complete = FALSE;

    				// Check if first two bytes are correct
    				if(current_configure.start_bytes == 0x1111) {
    					switch(current_configure.operation) {
    						case 0x01:	// Configure ADC;
    							config_adc((uint8_t *)&current_configure);
    							P2OUT |= START;
    							P1OUT &= ~LED_STATUS;
    							break;

    						case 0x10:	// Stop everything
    							P1OUT &= ~LED_STATUS;
    							break;

    						default:
    							P1OUT &= ~LED_STATUS;
    							P2OUT |= START;
    							break;
    					}
    				}
    			}

    			else if(!(P1IN & DRDY)) {
    				// Send dummy bytes 0x00 to receive adc data and send the whole package of 27 bytes to matlab
    				for (t = 0; t < 27; t++)
						SPI_received[t] = transferAndReceive(0x00);
					USBCDC_sendDataInBackground((uint8_t *)&SPI_received, 27, CDC0_INTFNUM, 1000);
				}

    			break;

    		case ST_USB_DISCONNECTED:
    			// USB is physically disconnected
    			P1OUT &= ~LED_POWER;
    			break;

    		default:
    			P1OUT &= ~LED_POWER;
    			break;
    			}
    }
}

void init_msp() { // -> add ADC2 Pins
	// Set up pins function
    P1DIR |= CS + LED_POWER + LED_STATUS;		// Set as output
    P1DIR &= ~DRDY;							// Set as input
    P1SEL &= ~(LED_1 + CS + DRDY);			// Set as general I/O
    P1OUT &= ~(LED_1 + CS);

    P2DIR |= START + RESET;
    P2SEL &= ~(START + RESET);
    P2OUT &= ~START;						// Set START to low

    P3SEL |= MISO + MOSI + SCLK;
    P3DIR &= ~MISO;
    P3DIR |= MOSI + SCLK;					// Set MOSI and SCLK as output

    /* Set up SPI */
    UCB0CTL1 |= UCSWRST;					// Start configuration and reset register
    UCB0CTL0 |= UCMST + UCMSB + UCSYNC;		// Data on falling edge and Master Mode UCSYNC
    UCB0CTL1 |= UCSSEL_2;					// SMCLK as clock source
    UCB0BR0 |= 0x00;						// Clock Divider
    UCB0BR1 |= 0x00;
    UCB0CTL1 &= ~UCSWRST;
}

void init_adc() {

	// Set RESET=1 and wait t_POR for oscillator start-up
    P2OUT |= RESET;					// Set RESET to high

    wait_cycles(5000);				// Wait 150ms, t_POR

    // Issue Reset Pulse and wait 18*tclk
    P2OUT &= ~RESET;
    wait_cycles(30);				// Wait 1ms
    P2OUT |= RESET;
    wait_cycles(400);				// Wait 10ms
}

void config_adc(uint8_t *curr_config) {
	P2OUT &= ~START;
	transferAndReceive(0x11);	// Disable Read Data Continuous Mode <- Could be non sense

	volatile uint8_t i = 0;

	transferAndReceive(0x41);	// Write first register
	transferAndReceive(0x18);	// Number of Register
	for(i = 0; i < 25; i++)
		transferAndReceive(*(curr_config + 3 + i)); // Begin at CONFIG1

	// Set ADC back to Read Continues Mode
	transferAndReceive(0x10);
	P2OUT |= START;
}

void wait_cycles(uint16_t cycles) {
	// Calculation of cycles: ms/1000*32768 because the MSP is extremely stupid and is not able to divide
	TA0CCR0 = cycles;
	TA0CCTL0 |= CCIE;					// Enable Interrupt of Timer A, Register 0
	TA0CTL |= TASSEL_1 + 				// Use 32kHz/ACLK as timer source --> Up to 2s waiting time
			MC_1;						// Timer counts up to TA0CCR0
	_bis_SR_register(CPUOFF + GIE);
}

uint8_t transferAndReceive(uint8_t transfer_buffer) {
	UCB0IFG &= ~(UCTXIFG|UCRXIFG);				// Delete Flags
	UCB0TXBUF = transfer_buffer;
	while(!(UCB0IFG & UCTXIFG));				// UCTXIFG is set when UCB0TXBUF empty
	while(!(UCB0IFG & UCRXIFG));				// UCRXIFG is set when UCBxRXBUF has received full character

	return UCB0RXBUF;							// Return SPI received Buffer
}

/* -----------------------------------------------------------------------
 * ===================== INTERRUPT VECTORS ===============================
 */

/*
 * ======== UNMI_ISR ========
 */

#if defined(__TI_COMPILER_VERSION__) || (__IAR_SYSTEMS_ICC__)
#pragma vector = UNMI_VECTOR
__interrupt void UNMI_ISR (void)
#elif defined(__GNUC__) && (__MSP430__)
void __attribute__ ((interrupt(UNMI_VECTOR))) UNMI_ISR (void)
#else
#error Compiler not found!
#endif
{
    switch (__even_in_range(SYSUNIV, SYSUNIV_BUSIFG ))
    {
        case SYSUNIV_NONE:
            __no_operation();
            break;
        case SYSUNIV_NMIIFG:
            __no_operation();
            break;
        case SYSUNIV_OFIFG:
            UCS_clearFaultFlag(UCS_XT2OFFG);
            UCS_clearFaultFlag(UCS_DCOFFG);
            SFR_clearInterrupt(SFR_OSCILLATOR_FAULT_INTERRUPT);
            break;
        case SYSUNIV_ACCVIFG:
            __no_operation();
            break;
        case SYSUNIV_BUSIFG:
            SYSBERRIV = 0; // clear bus error flag
            USB_disable(); // Disable
    }
}

#pragma vector = TIMER0_A0_VECTOR
__interrupt void Timer_A (void) {
	__bic_SR_register_on_exit(CPUOFF);
	TA0CCTL0 &= ~CCIE;					// Turn off Interrupt
	TA0CTL = 0x0000;					// Turn everything off and reset timer
}
