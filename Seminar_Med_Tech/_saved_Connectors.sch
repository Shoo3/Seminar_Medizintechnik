EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:ECG_Power_Supplies-cache
LIBS:MechTech
LIBS:MedTec2
LIBS:MedTech
LIBS:Seminar_Med_Tech 4-cache
LIBS:Seminar_Med_Tech-cache
LIBS:Seminar_Med_Tech-rescue
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CONN_02X10 J?
U 1 1 593ACF11
P 4550 4000
F 0 "J?" H 4550 4550 50  0000 C CNN
F 1 "CONN_02X10" V 4550 4000 50  0000 C CNN
F 2 "" H 4550 2800 50  0001 C CNN
F 3 "" H 4550 2800 50  0001 C CNN
	1    4550 4000
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X10 J?
U 1 1 593AD152
P 6625 4000
F 0 "J?" H 6625 4550 50  0000 C CNN
F 1 "CONN_02X10" V 6625 4000 50  0000 C CNN
F 2 "" H 6625 2800 50  0001 C CNN
F 3 "" H 6625 2800 50  0001 C CNN
	1    6625 4000
	1    0    0    -1  
$EndComp
Text GLabel 4075 4150 0    60   Input ~ 0
SPI_CLK
Text GLabel 7500 4050 2    60   Input ~ 0
SPI_IN
Text GLabel 7500 4150 2    60   Input ~ 0
SPI_OUT
Text GLabel 7500 3950 2    60   Input ~ 0
/RESET
Text GLabel 6050 3650 0    60   Input ~ 0
SPI_CS1
Text GLabel 6050 3550 0    60   Input ~ 0
SPI_START
Text GLabel 6050 3750 0    60   Input ~ 0
SPI_DRDY
Text GLabel 6050 3850 0    60   Input ~ 0
SPI_CS2
Text GLabel 4075 4250 0    60   Output ~ 0
EXT_CLK
$Comp
L Jumper_NC_Dual JP?
U 1 1 593ADF16
P 8525 4600
F 0 "JP?" H 8575 4500 50  0000 L CNN
F 1 "Jumper_NC_Dual" H 8525 4700 50  0000 C BNN
F 2 "" H 8525 4600 50  0001 C CNN
F 3 "" H 8525 4600 50  0001 C CNN
	1    8525 4600
	0    -1   -1   0   
$EndComp
Text GLabel 8975 4600 2    60   Input ~ 0
CLKSEL
$Comp
L R R?
U 1 1 593ADFF6
P 8800 4225
F 0 "R?" V 8880 4225 50  0000 C CNN
F 1 "R" V 8800 4225 50  0000 C CNN
F 2 "" V 8730 4225 50  0001 C CNN
F 3 "" H 8800 4225 50  0001 C CNN
	1    8800 4225
	1    0    0    -1  
$EndComp
Text Label 8800 3950 2    60   ~ 0
DVDD
$Comp
L GND #PWR?
U 1 1 593AE084
P 8525 4850
F 0 "#PWR?" H 8525 4600 50  0001 C CNN
F 1 "GND" H 8525 4700 50  0000 C CNN
F 2 "" H 8525 4850 50  0001 C CNN
F 3 "" H 8525 4850 50  0001 C CNN
	1    8525 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 4150 4075 4150
Wire Wire Line
	7500 4050 6875 4050
Wire Wire Line
	6875 4150 7500 4150
Wire Wire Line
	6875 3950 7500 3950
Wire Wire Line
	6050 3850 6375 3850
Wire Wire Line
	6375 3550 6050 3550
Wire Wire Line
	6375 3750 6050 3750
Wire Wire Line
	6050 3650 6375 3650
Wire Wire Line
	4075 4250 4300 4250
Wire Wire Line
	6875 4350 8525 4350
Wire Wire Line
	8625 4600 8975 4600
Wire Wire Line
	8800 4375 8800 4600
Connection ~ 8800 4600
Wire Wire Line
	8800 4075 8800 3950
Wire Wire Line
	4800 3650 5175 3650
Wire Wire Line
	5175 3650 5175 5000
$Comp
L GND #PWR?
U 1 1 593AE114
P 5175 5000
F 0 "#PWR?" H 5175 4750 50  0001 C CNN
F 1 "GND" H 5175 4850 50  0000 C CNN
F 2 "" H 5175 5000 50  0001 C CNN
F 3 "" H 5175 5000 50  0001 C CNN
	1    5175 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6875 3550 6950 3550
Wire Wire Line
	6950 3550 6950 3175
Wire Wire Line
	6950 3175 9425 3175
Wire Wire Line
	9425 3175 9425 3375
$Comp
L GND #PWR?
U 1 1 593AE149
P 9425 3375
F 0 "#PWR?" H 9425 3125 50  0001 C CNN
F 1 "GND" H 9425 3225 50  0000 C CNN
F 2 "" H 9425 3375 50  0001 C CNN
F 3 "" H 9425 3375 50  0001 C CNN
	1    9425 3375
	1    0    0    -1  
$EndComp
$EndSCHEMATC
