#include <bcm2835.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

#define RESET   RPI_GPIO_P1_15
#define START   RPI_GPIO_P1_12
#define DRDY    RPI_GPIO_P1_11
#define T_POR   150             //ms
#define TCLK    484             //ns

uint8_t initadc();
uint8_t initspi();

int main(int argc, char **argv) {
        char dummy_data[27];
        char rdata[27];
        uint8_t i;
        printf("BCM2835 Library Version: %i\n", bcm2835_version());

        //Set up debugging
        //bcm2835_set_debug(1);
        if(!bcm2835_init()) {
                printf("Unable to initialize bcm2835\n");
                return 1;
        }

        if(!initspi()) return 1;

        printf("Initialization succesfull!\n");
        // Set Reset and Start output
        bcm2835_gpio_fsel(RESET, BCM2835_GPIO_FSEL_OUTP);
        bcm2835_gpio_fsel(START, BCM2835_GPIO_FSEL_OUTP);
        bcm2835_gpio_fsel(DRDY, BCM2835_GPIO_FSEL_INPT);

        initadc();

        // Clear data
        memset(dummy_data, 0, sizeof(dummy_data));
        memset(rdata, 0, sizeof(rdata));

		uint32_t temp_data[3] = {0}; 
		double voltage;
		int8_t neg = 1;
		int t = 0;

        while(1) {
			//printf("%i",bcm2835_gpio_lev(DRDY));
                if(!bcm2835_gpio_lev(DRDY)) {
                        bcm2835_spi_transfernb(dummy_data, rdata, 27);
                        printf("%i\t", ++t);
                        printf("%i\t", rdata[0]);
                        for (i = 0; i < 8; i++ ) {
				//printf("\\0x%02x", rdata[i]);
				// Convert datas into mV
				neg = 1;
				temp_data[0] = rdata[3 + 3*i];
				temp_data[0] = temp_data[0] << 16;
				temp_data[1] = rdata[4 + 3*i];
				temp_data[1] = temp_data[1] << 8;
				temp_data[2] = rdata[5 + 3*i];
				temp_data[0] = temp_data[0] + temp_data[1] + temp_data[2];
				//mV = temp_data[0];
				// = mV*1/12*2.4/(pow(2,23) - 1);
			
				//if(mV > 2.4)
				//	mV = mV - 4,8;
				if(temp_data[0] & 0x00800000) {
					neg = -1;
					temp_data[0] = !temp_data[0] + 1;
				}
				
				voltage = ((double)temp_data[0])*2.4/(pow(2,23) - 1)*neg;
				
				
				printf("%eV\t\t", voltage);
			}
                        putchar('\n');
                }
                memset(rdata, 0, sizeof(rdata));
        }
        bcm2835_spi_end();
        bcm2835_close();
        return 0;
}

uint8_t initadc() {
        // Set RESET=1 and wait t_POR for oscillator start-up
        bcm2835_gpio_write(RESET, HIGH);
        bcm2835_delay(T_POR);
        // Issue Reset Pulse and wait 18*tclk
        bcm2835_gpio_write(RESET, LOW);
        bcm2835_delay(1);						// I know, I have a lot of delays
        bcm2835_gpio_write(RESET, HIGH);
        bcm2835_delay(10);
        // Send SDATAC Command to write Register
        bcm2835_spi_transfer(0b00010001);
        bcm2835_delay(1);                       // I have to wait 4*t_clk between each opcode
        // Set Device in HR Mode
        bcm2835_spi_transfer(0b01000001);       // Write Register CONFIG1
        bcm2835_delay(1);
        bcm2835_spi_transfer(0b00000000);       // Write n - 1 register
        bcm2835_delay(1);
        bcm2835_spi_transfer(0b10000110);		// f MOD / 512 (HR Mode: 1 kSPS)

        bcm2835_delay(1);
        bcm2835_spi_transfer(0b01000010);       // Write Register CONFIG2
        bcm2835_delay(1);
        bcm2835_spi_transfer(0b00000000);
        bcm2835_delay(1);
        bcm2835_spi_transfer(0b00110100);
        bcm2835_delay(1);

        bcm2835_spi_transfer(0b01000011);       // Write Register CONFIG3
        bcm2835_delay(1);
        bcm2835_spi_transfer(0b00000000);
        bcm2835_delay(1);
        bcm2835_spi_transfer(0b10000000);
        bcm2835_delay(1);


        // Set all Channels to noise measurements
        //uint8_t writeCHnSET = 0b01000101;
        // I will write a lot of register at the same time!
        bcm2835_spi_transfer(0x45);
        bcm2835_delay(1);
        bcm2835_spi_transfer(0x07);
        bcm2835_delay(1);
        for(int i = 0; i < 8; i++) {
                bcm2835_spi_transfer(0b00010101);
                bcm2835_delay(1);

        }

        //for(int n = 1; n <= 8; n++) {
        //      bcm2835_spi_transfer(writeCHnSET + n);
        //      bcm2835_spi_transfer(0b00000001);
        //      bcm2835_spi_transfer(0x01);
        //}

        // Activate Coversion
        bcm2835_gpio_set(START);

        // Set ADC back to Read Continues Mode
        bcm2835_spi_transfer(0b00010000);
        printf("The device should be in RDATAC now\n");
        return 0;
}

uint8_t initspi() {
        // Start SPI
        if(!bcm2835_spi_begin()) {
                printf("Unable to start SPI Mode!\n");
                return 0;
        }
        printf("SPI activated\n");
        bcm2835_spi_setBitOrder(BCM2835_SPI_BIT_ORDER_MSBFIRST);
        // Opcodes are decoded on the eight SCLK falling edge
        bcm2835_spi_setDataMode(BCM2835_SPI_MODE1);                     //CPOL = 0, CPHA = 1
        bcm2835_spi_setClockDivider(BCM2835_SPI_CLOCK_DIVIDER_16);     //1.953MHz
        bcm2835_spi_chipSelect(BCM2835_SPI_CS0);
        bcm2835_spi_setChipSelectPolarity(BCM2835_SPI_CS0, LOW);

        return 1;
}
