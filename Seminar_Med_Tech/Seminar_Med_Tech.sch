EESchema Schematic File Version 2
LIBS:Seminar_Med_Tech-rescue
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
LIBS:MechTech
LIBS:MedTech
LIBS:MedTec2
LIBS:Seminar_Med_Tech-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
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
L Jumper JP16
U 1 1 5921B571
P 3450 1175
F 0 "JP16" H 3450 1325 50  0000 C CNN
F 1 "Jumper" H 3450 1095 50  0000 C CNN
F 2 "" H 3450 1175 50  0001 C CNN
F 3 "" H 3450 1175 50  0001 C CNN
	1    3450 1175
	1    0    0    -1  
$EndComp
Text GLabel 1075 1825 0    60   Input ~ 0
ECG_V6
Text GLabel 1075 1950 0    60   Input ~ 0
ECG_V1
Text GLabel 1075 2075 0    60   Input ~ 0
ECG_V5
Text GLabel 1075 2200 0    60   Input ~ 0
ECG_V4
Text GLabel 1075 2325 0    60   Input ~ 0
ECG_V3
Text GLabel 1075 2450 0    60   Input ~ 0
ECG_V2
Text GLabel 1075 2575 0    60   Input ~ 0
ECG_LL
Text GLabel 1075 2700 0    60   Input ~ 0
ECG_RA
Text GLabel 1075 2825 0    60   Input ~ 0
ECG_LA
$Comp
L Jumper2x2 U1
U 1 1 5921D05C
P 3450 1475
F 0 "U1" H 3625 1600 39  0000 C CNN
F 1 "JP22" H 3250 1600 60  0000 C CNN
F 2 "" H 3450 1475 60  0001 C CNN
F 3 "" H 3450 1475 60  0001 C CNN
	1    3450 1475
	1    0    0    -1  
$EndComp
$Comp
L Jumper2x2 U2
U 1 1 5921D0B9
P 3450 1725
F 0 "U2" H 3625 1850 60  0000 C CNN
F 1 "JP23" H 3275 1850 60  0000 C CNN
F 2 "" H 3450 1725 60  0001 C CNN
F 3 "" H 3450 1725 60  0001 C CNN
	1    3450 1725
	1    0    0    -1  
$EndComp
$Comp
L Jumper2x2 U3
U 1 1 5921D105
P 3450 1975
F 0 "U3" H 3625 2100 60  0000 C CNN
F 1 "JP24" H 3275 2100 60  0000 C CNN
F 2 "" H 3450 1975 60  0001 C CNN
F 3 "" H 3450 1975 60  0001 C CNN
	1    3450 1975
	1    0    0    -1  
$EndComp
$Comp
L Jumper2x2 U4
U 1 1 5921D158
P 3450 2225
F 0 "U4" H 3625 2350 60  0000 C CNN
F 1 "JP25" H 3275 2350 60  0000 C CNN
F 2 "" H 3450 2225 60  0001 C CNN
F 3 "" H 3450 2225 60  0001 C CNN
	1    3450 2225
	1    0    0    -1  
$EndComp
$Comp
L Jumper2x2 U5
U 1 1 5921D1AA
P 3450 2500
F 0 "U5" H 3625 2625 60  0000 C CNN
F 1 "JP26" H 3275 2625 60  0000 C CNN
F 2 "" H 3450 2500 60  0001 C CNN
F 3 "" H 3450 2500 60  0001 C CNN
	1    3450 2500
	1    0    0    -1  
$EndComp
$Comp
L Jumper2x2 U6
U 1 1 5921D2F3
P 3450 2775
F 0 "U6" H 3600 2900 60  0000 C CNN
F 1 "JP27" H 3275 2900 60  0000 C CNN
F 2 "" H 3450 2775 60  0001 C CNN
F 3 "" H 3450 2775 60  0001 C CNN
	1    3450 2775
	1    0    0    -1  
$EndComp
$Comp
L Jumper2x2 U7
U 1 1 5921D33F
P 3450 3050
F 0 "U7" H 3625 3200 60  0000 C CNN
F 1 "JP28" H 3275 3200 60  0000 C CNN
F 2 "" H 3450 3050 60  0001 C CNN
F 3 "" H 3450 3050 60  0001 C CNN
	1    3450 3050
	1    0    0    -1  
$EndComp
$Comp
L Jumper2x2 U8
U 1 1 5921D38F
P 3450 3350
F 0 "U8" H 3625 3500 60  0000 C CNN
F 1 "JP29" H 3275 3500 60  0000 C CNN
F 2 "" H 3450 3350 60  0001 C CNN
F 3 "" H 3450 3350 60  0001 C CNN
	1    3450 3350
	1    0    0    -1  
$EndComp
$Comp
L C C90
U 1 1 5921FB0A
P 4150 1225
F 0 "C90" H 4175 1325 50  0000 L CNN
F 1 "100pF" H 4175 1125 50  0000 L CNN
F 2 "" H 4188 1075 50  0001 C CNN
F 3 "" H 4150 1225 50  0001 C CNN
	1    4150 1225
	1    0    0    -1  
$EndComp
$Comp
L ADS1298 U20
U 1 1 5921E8FA
P 5125 2425
F 0 "U20" H 5575 1800 60  0000 C CNN
F 1 "ADS1298" H 5125 2525 60  0000 C CNN
F 2 "" H 5075 2275 60  0001 C CNN
F 3 "" H 5075 2275 60  0001 C CNN
	1    5125 2425
	1    0    0    -1  
$EndComp
$Comp
L ADS1298 U18
U 1 1 592207CE
P 7950 3775
F 0 "U18" H 8400 3150 60  0000 C CNN
F 1 "ADS1298" H 7950 3875 60  0000 C CNN
F 2 "" H 7900 3625 60  0001 C CNN
F 3 "" H 7900 3625 60  0001 C CNN
	1    7950 3775
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 5922AF93
P 7350 4225
F 0 "#PWR01" H 7350 3975 50  0001 C CNN
F 1 "GND" H 7350 4075 50  0000 C CNN
F 2 "" H 7350 4225 50  0001 C CNN
F 3 "" H 7350 4225 50  0001 C CNN
	1    7350 4225
	1    0    0    -1  
$EndComp
Text GLabel 9350 2800 2    39   Input ~ 0
SPI_CS1
Text GLabel 9800 2925 2    39   Input ~ 0
SPI_IN
Text GLabel 7200 2575 2    39   Input ~ 0
SPI_CLK
Text GLabel 9000 2575 0    39   Input ~ 0
SPI_START
Text Label 9300 2300 2    39   ~ 0
CLK
Text GLabel 7375 6000 0    60   Input ~ 0
VREFP
Text GLabel 7375 5550 0    60   Output ~ 0
PACEOUT21
Text GLabel 7375 5725 0    60   Output ~ 0
PACEOUT22
Text GLabel 9100 5000 2    60   Output ~ 0
/RESET
Text GLabel 9100 5150 2    60   Output ~ 0
GPIO21
Text GLabel 9100 5300 2    60   Output ~ 0
/PWDN
Text GLabel 9100 5450 2    60   Output ~ 0
DAISY_IN
$Comp
L R R16
U 1 1 592B4864
P 8925 4675
F 0 "R16" V 9005 4675 50  0000 C CNN
F 1 "10k" V 8925 4675 50  0000 C CNN
F 2 "" V 8855 4675 50  0001 C CNN
F 3 "" H 8925 4675 50  0001 C CNN
	1    8925 4675
	1    0    0    -1  
$EndComp
$Comp
L R R18
U 1 1 592B48D1
P 9175 4675
F 0 "R18" V 9255 4675 50  0000 C CNN
F 1 "10k" V 9175 4675 50  0000 C CNN
F 2 "" V 9105 4675 50  0001 C CNN
F 3 "" H 9175 4675 50  0001 C CNN
	1    9175 4675
	1    0    0    -1  
$EndComp
$Comp
L Jumper JP5
U 1 1 592B540A
P 9000 5900
F 0 "JP5" H 9000 6050 50  0000 C CNN
F 1 "Jumper" H 9000 5820 50  0000 C CNN
F 2 "" H 9000 5900 50  0001 C CNN
F 3 "" H 9000 5900 50  0001 C CNN
	1    9000 5900
	0    1    1    0   
$EndComp
$Comp
L C C30
U 1 1 592B5A36
P 8575 5750
F 0 "C30" H 8600 5850 50  0000 L CNN
F 1 "1uF" H 8600 5650 50  0000 L CNN
F 2 "" H 8613 5600 50  0001 C CNN
F 3 "" H 8575 5750 50  0001 C CNN
	1    8575 5750
	1    0    0    -1  
$EndComp
$Comp
L C C29
U 1 1 592B5E38
P 8325 5875
F 0 "C29" H 8350 5975 50  0000 L CNN
F 1 "22uF" H 8350 5775 50  0000 L CNN
F 2 "" H 8363 5725 50  0001 C CNN
F 3 "" H 8325 5875 50  0001 C CNN
	1    8325 5875
	1    0    0    -1  
$EndComp
$Comp
L C C25
U 1 1 592B6790
P 7400 5150
F 0 "C25" H 7425 5250 50  0000 L CNN
F 1 "1uF" H 7425 5050 50  0000 L CNN
F 2 "" H 7438 5000 50  0001 C CNN
F 3 "" H 7400 5150 50  0001 C CNN
	1    7400 5150
	1    0    0    -1  
$EndComp
Text Label 7400 5400 0    60   ~ 0
AVSS
$Comp
L TEST TP2
U 1 1 592B76C2
P 7500 6150
F 0 "TP2" H 7500 6450 50  0000 C BNN
F 1 "TEST" H 7500 6400 50  0000 C CNN
F 2 "" H 7500 6150 50  0001 C CNN
F 3 "" H 7500 6150 50  0001 C CNN
	1    7500 6150
	0    1    1    0   
$EndComp
NoConn ~ 7950 4475
NoConn ~ 7850 4475
$Comp
L C C27
U 1 1 592B7E52
P 8075 5000
F 0 "C27" H 8100 5100 50  0000 L CNN
F 1 "10uF" H 8100 4900 50  0000 L CNN
F 2 "" H 8113 4850 50  0001 C CNN
F 3 "" H 8075 5000 50  0001 C CNN
	1    8075 5000
	0    1    1    0   
$EndComp
$Comp
L C C28
U 1 1 592B7F39
P 8075 5275
F 0 "C28" H 8100 5375 50  0000 L CNN
F 1 "0.1uF" H 8100 5175 50  0000 L CNN
F 2 "" H 8113 5125 50  0001 C CNN
F 3 "" H 8075 5275 50  0001 C CNN
	1    8075 5275
	0    1    1    0   
$EndComp
Text GLabel 1075 5450 0    60   Input ~ 0
VREFP
Text GLabel 1075 5100 0    60   Output ~ 0
PACEOUT11
Text GLabel 1075 4975 0    60   Output ~ 0
PACEOUT12
Text GLabel 4325 4025 0    60   Output ~ 0
/RESET
Text GLabel 4325 3875 0    60   Output ~ 0
GPIO11
Text GLabel 2775 4925 2    60   Output ~ 0
/PWDN
$Comp
L R R10
U 1 1 592BD30C
P 2550 4125
F 0 "R10" V 2630 4125 50  0000 C CNN
F 1 "10k" V 2550 4125 50  0000 C CNN
F 2 "" V 2480 4125 50  0001 C CNN
F 3 "" H 2550 4125 50  0001 C CNN
	1    2550 4125
	1    0    0    -1  
$EndComp
$Comp
L R R11
U 1 1 592BD312
P 2800 4125
F 0 "R11" V 2880 4125 50  0000 C CNN
F 1 "10k" V 2800 4125 50  0000 C CNN
F 2 "" V 2730 4125 50  0001 C CNN
F 3 "" H 2800 4125 50  0001 C CNN
	1    2800 4125
	1    0    0    -1  
$EndComp
$Comp
L Jumper JP4
U 1 1 592BD318
P 2625 5350
F 0 "JP4" H 2625 5500 50  0000 C CNN
F 1 "Jumper" H 2625 5270 50  0000 C CNN
F 2 "" H 2625 5350 50  0001 C CNN
F 3 "" H 2625 5350 50  0001 C CNN
	1    2625 5350
	0    1    1    0   
$EndComp
$Comp
L C C2
U 1 1 592BD324
P 5450 3700
F 0 "C2" H 5475 3800 50  0000 L CNN
F 1 "1uF" H 5475 3600 50  0000 L CNN
F 2 "" H 5488 3550 50  0001 C CNN
F 3 "" H 5450 3700 50  0001 C CNN
	1    5450 3700
	1    0    0    -1  
$EndComp
$Comp
L C C9
U 1 1 592BD32B
P 2000 5325
F 0 "C9" H 2025 5425 50  0000 L CNN
F 1 "22uF" H 2025 5225 50  0000 L CNN
F 2 "" H 2038 5175 50  0001 C CNN
F 3 "" H 2000 5325 50  0001 C CNN
	1    2000 5325
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 592BD338
P 1025 4400
F 0 "C1" H 1050 4500 50  0000 L CNN
F 1 "1uF" H 1050 4300 50  0000 L CNN
F 2 "" H 1063 4250 50  0001 C CNN
F 3 "" H 1025 4400 50  0001 C CNN
	1    1025 4400
	1    0    0    -1  
$EndComp
$Comp
L TEST TP1
U 1 1 592BD340
P 1200 5600
F 0 "TP1" H 1200 5900 50  0000 C BNN
F 1 "TEST" H 1200 5850 50  0000 C CNN
F 2 "" H 1200 5600 50  0001 C CNN
F 3 "" H 1200 5600 50  0001 C CNN
	1    1200 5600
	0    1    1    0   
$EndComp
$Comp
L C C95
U 1 1 592BD346
P 1700 4450
F 0 "C95" H 1725 4550 50  0000 L CNN
F 1 "10uF" H 1725 4350 50  0000 L CNN
F 2 "" H 1738 4300 50  0001 C CNN
F 3 "" H 1700 4450 50  0001 C CNN
	1    1700 4450
	0    1    1    0   
$EndComp
$Comp
L C C10
U 1 1 592BD34C
P 1700 4725
F 0 "C10" H 1725 4825 50  0000 L CNN
F 1 "0.1uF" H 1725 4625 50  0000 L CNN
F 2 "" H 1738 4575 50  0001 C CNN
F 3 "" H 1700 4725 50  0001 C CNN
	1    1700 4725
	0    1    1    0   
$EndComp
NoConn ~ 5025 3125
NoConn ~ 5125 3125
NoConn ~ 7350 3375
$Comp
L GND #PWR04
U 1 1 592C92E3
P 8900 4175
F 0 "#PWR04" H 8900 3925 50  0001 C CNN
F 1 "GND" H 8900 4025 50  0000 C CNN
F 2 "" H 8900 4175 50  0001 C CNN
F 3 "" H 8900 4175 50  0001 C CNN
	1    8900 4175
	1    0    0    -1  
$EndComp
$Comp
L Header12 U14
U 1 1 592B1741
P 10350 4900
F 0 "U14" H 10450 4575 39  0000 C CNN
F 1 "J5" H 10350 5350 39  0000 C CNN
F 2 "" H 10350 4925 60  0001 C CNN
F 3 "" H 10350 4925 60  0001 C CNN
	1    10350 4900
	1    0    0    -1  
$EndComp
Text GLabel 10600 4575 2    60   Input ~ 0
PACEOUT22
Text GLabel 10600 4700 2    60   Input ~ 0
PACEOUT12
Text GLabel 10600 4950 2    60   Input ~ 0
/PWDN
Text GLabel 10100 4575 0    60   Input ~ 0
PACEOUT21
Text GLabel 10100 4700 0    60   Input ~ 0
PACEOUT11
Text GLabel 10100 4950 0    60   Input ~ 0
GPIO14
Text GLabel 10100 5075 0    60   Input ~ 0
GPIO24
NoConn ~ 10600 4825
NoConn ~ 10100 5200
NoConn ~ 10100 4825
$Comp
L GND #PWR05
U 1 1 592B1F34
P 10600 5450
F 0 "#PWR05" H 10600 5200 50  0001 C CNN
F 1 "GND" H 10600 5300 50  0000 C CNN
F 2 "" H 10600 5450 50  0001 C CNN
F 3 "" H 10600 5450 50  0001 C CNN
	1    10600 5450
	1    0    0    -1  
$EndComp
NoConn ~ 10600 5200
Text GLabel 10600 5325 2    60   Input ~ 0
DAISY_IN
Text GLabel 10100 5325 0    60   Input ~ 0
GPIO13
NoConn ~ 10100 5450
$Comp
L TEST TP3
U 1 1 592B47D5
P 10525 6150
F 0 "TP3" H 10525 6450 50  0000 C BNN
F 1 "TEST" H 10525 6400 50  0000 C CNN
F 2 "" H 10525 6150 50  0001 C CNN
F 3 "" H 10525 6150 50  0001 C CNN
	1    10525 6150
	1    0    0    -1  
$EndComp
$Comp
L TEST TP4
U 1 1 592B48B1
P 10700 6150
F 0 "TP4" H 10700 6450 50  0000 C BNN
F 1 "TEST" H 10700 6400 50  0000 C CNN
F 2 "" H 10700 6150 50  0001 C CNN
F 3 "" H 10700 6150 50  0001 C CNN
	1    10700 6150
	1    0    0    -1  
$EndComp
$Comp
L TEST TP5
U 1 1 592B4956
P 10875 6150
F 0 "TP5" H 10875 6450 50  0000 C BNN
F 1 "TEST" H 10875 6400 50  0000 C CNN
F 2 "" H 10875 6150 50  0001 C CNN
F 3 "" H 10875 6150 50  0001 C CNN
	1    10875 6150
	1    0    0    -1  
$EndComp
$Comp
L TEST TP6
U 1 1 592B49FA
P 11050 6150
F 0 "TP6" H 11050 6450 50  0000 C BNN
F 1 "TEST" H 11050 6400 50  0000 C CNN
F 2 "" H 11050 6150 50  0001 C CNN
F 3 "" H 11050 6150 50  0001 C CNN
	1    11050 6150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 592B54F4
P 10800 6325
F 0 "#PWR06" H 10800 6075 50  0001 C CNN
F 1 "GND" H 10800 6175 50  0000 C CNN
F 2 "" H 10800 6325 50  0001 C CNN
F 3 "" H 10800 6325 50  0001 C CNN
	1    10800 6325
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 592D3586
P 850 6400
F 0 "C6" H 875 6500 50  0000 L CNN
F 1 "1uF" H 875 6300 50  0000 L CNN
F 2 "" H 888 6250 50  0001 C CNN
F 3 "" H 850 6400 50  0001 C CNN
	1    850  6400
	1    0    0    -1  
$EndComp
$Comp
L C C16
U 1 1 592D3613
P 1150 6400
F 0 "C16" H 1175 6500 50  0000 L CNN
F 1 "0.1uF" H 1175 6300 50  0000 L CNN
F 2 "" H 1188 6250 50  0001 C CNN
F 3 "" H 1150 6400 50  0001 C CNN
	1    1150 6400
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 592B240F
P 1450 6400
F 0 "C4" H 1475 6500 50  0000 L CNN
F 1 "1uF" H 1475 6300 50  0000 L CNN
F 2 "" H 1488 6250 50  0001 C CNN
F 3 "" H 1450 6400 50  0001 C CNN
	1    1450 6400
	1    0    0    -1  
$EndComp
$Comp
L C C14
U 1 1 592B2415
P 1750 6400
F 0 "C14" H 1775 6500 50  0000 L CNN
F 1 "0.1uF" H 1775 6300 50  0000 L CNN
F 2 "" H 1788 6250 50  0001 C CNN
F 3 "" H 1750 6400 50  0001 C CNN
	1    1750 6400
	1    0    0    -1  
$EndComp
$Comp
L C C17
U 1 1 592B24CD
P 2025 6400
F 0 "C17" H 2050 6500 50  0000 L CNN
F 1 "1uF" H 2050 6300 50  0000 L CNN
F 2 "" H 2063 6250 50  0001 C CNN
F 3 "" H 2025 6400 50  0001 C CNN
	1    2025 6400
	1    0    0    -1  
$EndComp
$Comp
L C C18
U 1 1 592B24D3
P 2325 6400
F 0 "C18" H 2350 6500 50  0000 L CNN
F 1 "0.1uF" H 2350 6300 50  0000 L CNN
F 2 "" H 2363 6250 50  0001 C CNN
F 3 "" H 2325 6400 50  0001 C CNN
	1    2325 6400
	1    0    0    -1  
$EndComp
$Comp
L C C12
U 1 1 592B258F
P 2600 6400
F 0 "C12" H 2625 6500 50  0000 L CNN
F 1 "0.1uF" H 2625 6300 50  0000 L CNN
F 2 "" H 2638 6250 50  0001 C CNN
F 3 "" H 2600 6400 50  0001 C CNN
	1    2600 6400
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 592B2595
P 2900 6400
F 0 "C5" H 2925 6500 50  0000 L CNN
F 1 "1uF" H 2925 6300 50  0000 L CNN
F 2 "" H 2938 6250 50  0001 C CNN
F 3 "" H 2900 6400 50  0001 C CNN
	1    2900 6400
	1    0    0    -1  
$EndComp
$Comp
L OPA2340 U19
U 1 1 5934A2B6
P 9925 1100
F 0 "U19" H 9975 1250 50  0000 L CNN
F 1 "OPA2340" H 9925 900 50  0000 L CNN
F 2 "" H 9825 1200 50  0001 C CNN
F 3 "" H 9925 1100 50  0001 C CNN
	1    9925 1100
	1    0    0    1   
$EndComp
$Comp
L C C21
U 1 1 5934A8EE
P 9425 1475
F 0 "C21" H 9450 1575 50  0000 L CNN
F 1 "NI" H 9450 1375 50  0000 L CNN
F 2 "" H 9463 1325 50  0001 C CNN
F 3 "" H 9425 1475 50  0001 C CNN
	1    9425 1475
	0    -1   -1   0   
$EndComp
$Comp
L C C22
U 1 1 5934F164
P 9425 725
F 0 "C22" H 9450 825 50  0000 L CNN
F 1 "NI" H 9450 625 50  0000 L CNN
F 2 "" H 9463 575 50  0001 C CNN
F 3 "" H 9425 725 50  0001 C CNN
	1    9425 725 
	0    -1   -1   0   
$EndComp
Text GLabel 10575 1100 2    39   Output ~ 0
ECG_SHD_DRV
$Comp
L R R4
U 1 1 59371C9C
P 9175 1200
F 0 "R4" V 9255 1200 50  0000 C CNN
F 1 "NI" V 9175 1200 50  0000 C CNN
F 2 "" V 9105 1200 50  0001 C CNN
F 3 "" H 9175 1200 50  0001 C CNN
	1    9175 1200
	0    1    1    0   
$EndComp
$Comp
L Jumper_NC_Dual JP17
U 1 1 59389AEC
P 6825 850
F 0 "JP17" H 6875 750 50  0000 L CNN
F 1 "NI" H 6825 950 50  0000 C BNN
F 2 "" H 6825 850 50  0001 C CNN
F 3 "" H 6825 850 50  0001 C CNN
	1    6825 850 
	0    -1   -1   0   
$EndComp
$Comp
L R R3
U 1 1 5938E491
P 4725 1425
F 0 "R3" V 4600 1425 50  0000 C CNN
F 1 "0" V 4725 1425 50  0000 C CNN
F 2 "" V 4655 1425 50  0001 C CNN
F 3 "" H 4725 1425 50  0001 C CNN
	1    4725 1425
	1    0    0    -1  
$EndComp
$Comp
L Jumper_NC_Small JP1
U 1 1 59391637
P 4875 1425
F 0 "JP1" H 4750 1375 50  0000 C CNN
F 1 "Jumper" H 5000 1375 50  0000 C CNN
F 2 "" H 4875 1425 50  0001 C CNN
F 3 "" H 4875 1425 50  0001 C CNN
	1    4875 1425
	0    1    1    0   
$EndComp
$Comp
L R R8
U 1 1 59392BA4
P 5650 850
F 0 "R8" V 5730 850 50  0000 C CNN
F 1 "392K" V 5650 850 50  0000 C CNN
F 2 "" V 5580 850 50  0001 C CNN
F 3 "" H 5650 850 50  0001 C CNN
	1    5650 850 
	1    0    0    -1  
$EndComp
$Comp
L C C20
U 1 1 59392C63
P 5250 850
F 0 "C20" H 5275 950 50  0000 L CNN
F 1 "0.01uF" H 5275 750 50  0000 L CNN
F 2 "" H 5288 700 50  0001 C CNN
F 3 "" H 5250 850 50  0001 C CNN
	1    5250 850 
	1    0    0    -1  
$EndComp
Text GLabel 7800 1100 2    39   Output ~ 0
ECG_RL
$Comp
L C_Small C13
U 1 1 593681B8
P 6075 1500
F 0 "C13" V 6125 1550 50  0000 L CNN
F 1 "0.1uF" V 6125 1250 50  0000 L CNN
F 2 "" H 6075 1500 50  0001 C CNN
F 3 "" H 6075 1500 50  0001 C CNN
	1    6075 1500
	0    1    1    0   
$EndComp
$Comp
L C_Small C3
U 1 1 59368510
P 6075 1350
F 0 "C3" V 6025 1400 50  0000 L CNN
F 1 "1uF" V 6025 1175 50  0000 L CNN
F 2 "" H 6075 1350 50  0001 C CNN
F 3 "" H 6075 1350 50  0001 C CNN
	1    6075 1350
	0    1    1    0   
$EndComp
$Comp
L C_Small C76
U 1 1 59370777
P 6650 1800
F 0 "C76" H 6660 1870 50  0000 L CNN
F 1 "1uF" H 6660 1720 50  0000 L CNN
F 2 "" H 6650 1800 50  0001 C CNN
F 3 "" H 6650 1800 50  0001 C CNN
	1    6650 1800
	1    0    0    -1  
$EndComp
$Comp
L C_Small C77
U 1 1 5937083E
P 6900 1800
F 0 "C77" H 6910 1870 50  0000 L CNN
F 1 "1uF" H 6910 1720 50  0000 L CNN
F 2 "" H 6900 1800 50  0001 C CNN
F 3 "" H 6900 1800 50  0001 C CNN
	1    6900 1800
	1    0    0    -1  
$EndComp
Text Label 7975 2400 0    39   ~ 0
AVDD
NoConn ~ 7650 3075
NoConn ~ 7700 3075
NoConn ~ 7750 3075
$Comp
L R_Small R5
U 1 1 593A24B5
P 8325 1250
F 0 "R5" V 8175 1200 50  0000 L CNN
F 1 "NI" V 8250 1200 50  0000 L CNN
F 2 "" H 8325 1250 50  0001 C CNN
F 3 "" H 8325 1250 50  0001 C CNN
	1    8325 1250
	0    1    1    0   
$EndComp
$Comp
L R_Small R1
U 1 1 593A257A
P 8475 1075
F 0 "R1" H 8505 1095 50  0000 L CNN
F 1 "NI" H 8505 1035 50  0000 L CNN
F 2 "" H 8475 1075 50  0001 C CNN
F 3 "" H 8475 1075 50  0001 C CNN
	1    8475 1075
	1    0    0    -1  
$EndComp
$Comp
L Jumper_NC_Dual JP18
U 1 1 593C6B14
P 9500 2300
F 0 "JP18" H 9550 2200 50  0000 L CNN
F 1 "NI" H 9500 2400 50  0000 C BNN
F 2 "" H 9500 2300 50  0001 C CNN
F 3 "" H 9500 2300 50  0001 C CNN
	1    9500 2300
	0    1    1    0   
$EndComp
Text GLabel 9975 2550 2    39   Input ~ 0
EXT_CLK
$Comp
L HC735 OSC1
U 1 1 593CD827
P 10550 1925
F 0 "OSC1" H 10700 1625 39  0000 C CNN
F 1 "HC735-2.048MHZ" H 10550 2200 39  0000 C CNN
F 2 "" H 10550 1850 60  0001 C CNN
F 3 "" H 10550 1850 60  0001 C CNN
	1    10550 1925
	1    0    0    -1  
$EndComp
$Comp
L Jumper_NC_Dual JP19
U 1 1 593CE6F6
P 11075 1825
F 0 "JP19" H 11125 1725 50  0000 L CNN
F 1 "NI" H 11075 1925 50  0000 C BNN
F 2 "" H 11075 1825 50  0001 C CNN
F 3 "" H 11075 1825 50  0001 C CNN
	1    11075 1825
	0    1    1    0   
$EndComp
$Comp
L C_Small C11
U 1 1 593D3889
P 10025 1700
F 0 "C11" H 9925 1775 50  0000 L CNN
F 1 "1uF" H 9850 1600 50  0000 L CNN
F 2 "" H 10025 1700 50  0001 C CNN
F 3 "" H 10025 1700 50  0001 C CNN
	1    10025 1700
	1    0    0    -1  
$EndComp
Text Label 8850 3275 0    39   ~ 0
DVDD
Text GLabel 6100 2425 2    39   Output ~ 0
SPI_OUT
Text GLabel 9300 3725 2    39   Output ~ 0
GPIO24
Text GLabel 9300 3825 2    39   Output ~ 0
GPIO22
Text GLabel 9300 3925 2    39   Output ~ 0
GPIO23
Text GLabel 6100 2025 2    39   Output ~ 0
CLKSEL
Text GLabel 6100 2250 2    39   Output ~ 0
SPI_DRDY
Text GLabel 6100 2350 2    39   Output ~ 0
GPIO14
Text GLabel 6550 2475 2    39   Output ~ 0
GPIO12
Text GLabel 6100 2525 2    39   Output ~ 0
GPIO13
Text GLabel 9300 3375 2    39   Output ~ 0
CLKSEL
Text GLabel 9300 4025 2    39   Output ~ 0
SPI_CS2
Text GLabel 9300 3625 2    39   Output ~ 0
DRDY2
Text GLabel 4175 4450 0    60   Input ~ 0
ECG_V7P
Text GLabel 4175 4575 0    60   Input ~ 0
ECG_V7N
Text GLabel 4175 4700 0    60   Input ~ 0
ECG_V8P
Text GLabel 4175 4825 0    60   Input ~ 0
ECG_V8N
Text GLabel 4175 4950 0    60   Input ~ 0
ECG_V9P
Text GLabel 4175 5075 0    60   Input ~ 0
ECG_V9N
Text GLabel 4175 5200 0    60   Input ~ 0
ECG_V10P
Text GLabel 4175 5325 0    60   Input ~ 0
ECG_V10N
Text GLabel 4175 5450 0    60   Input ~ 0
ECG_V11P
$Comp
L Jumper2x2 U9
U 1 1 593ABCC9
P 5025 4550
F 0 "U9" H 5200 4675 39  0000 C CNN
F 1 "JP30" H 4825 4675 60  0000 C CNN
F 2 "" H 5025 4550 60  0001 C CNN
F 3 "" H 5025 4550 60  0001 C CNN
	1    5025 4550
	1    0    0    -1  
$EndComp
$Comp
L Jumper2x2 U10
U 1 1 593ABCCF
P 5025 4800
F 0 "U10" H 5200 4925 60  0000 C CNN
F 1 "JP31" H 4850 4925 60  0000 C CNN
F 2 "" H 5025 4800 60  0001 C CNN
F 3 "" H 5025 4800 60  0001 C CNN
	1    5025 4800
	1    0    0    -1  
$EndComp
$Comp
L Jumper2x2 U11
U 1 1 593ABCD5
P 5025 5050
F 0 "U11" H 5200 5175 60  0000 C CNN
F 1 "JP32" H 4850 5175 60  0000 C CNN
F 2 "" H 5025 5050 60  0001 C CNN
F 3 "" H 5025 5050 60  0001 C CNN
	1    5025 5050
	1    0    0    -1  
$EndComp
$Comp
L Jumper2x2 U12
U 1 1 593ABCDB
P 5025 5300
F 0 "U12" H 5200 5425 60  0000 C CNN
F 1 "JP33" H 4850 5425 60  0000 C CNN
F 2 "" H 5025 5300 60  0001 C CNN
F 3 "" H 5025 5300 60  0001 C CNN
	1    5025 5300
	1    0    0    -1  
$EndComp
$Comp
L Jumper2x2 U13
U 1 1 593ABCE1
P 5025 5575
F 0 "U13" H 5200 5700 60  0000 C CNN
F 1 "JP34" H 4850 5700 60  0000 C CNN
F 2 "" H 5025 5575 60  0001 C CNN
F 3 "" H 5025 5575 60  0001 C CNN
	1    5025 5575
	1    0    0    -1  
$EndComp
$Comp
L Jumper2x2 U15
U 1 1 593ABCE7
P 5025 5850
F 0 "U15" H 5175 5975 60  0000 C CNN
F 1 "JP35" H 4850 5975 60  0000 C CNN
F 2 "" H 5025 5850 60  0001 C CNN
F 3 "" H 5025 5850 60  0001 C CNN
	1    5025 5850
	1    0    0    -1  
$EndComp
$Comp
L Jumper2x2 U16
U 1 1 593ABCED
P 5025 6125
F 0 "U16" H 5200 6275 60  0000 C CNN
F 1 "JP36" H 4850 6275 60  0000 C CNN
F 2 "" H 5025 6125 60  0001 C CNN
F 3 "" H 5025 6125 60  0001 C CNN
	1    5025 6125
	1    0    0    -1  
$EndComp
$Comp
L Jumper2x2 U17
U 1 1 593ABCF3
P 5025 6425
F 0 "U17" H 5200 6575 60  0000 C CNN
F 1 "JP37" H 4850 6575 60  0000 C CNN
F 2 "" H 5025 6425 60  0001 C CNN
F 3 "" H 5025 6425 60  0001 C CNN
	1    5025 6425
	1    0    0    -1  
$EndComp
Text GLabel 4175 5575 0    60   Input ~ 0
ECV_V11N
Text GLabel 4175 5700 0    60   Input ~ 0
ECV_V12P
Text GLabel 4175 5825 0    60   Input ~ 0
ECV_V12N
Text GLabel 4175 5950 0    60   Input ~ 0
ECV_V13P
Text GLabel 4175 6075 0    60   Input ~ 0
ECV_V13N
Text GLabel 4175 6200 0    60   Input ~ 0
ECV_V14P
Text GLabel 4175 6325 0    60   Input ~ 0
ECV_V14N
$Comp
L POT RV1
U 1 1 5945231A
P 8475 1550
F 0 "RV1" V 8300 1550 50  0000 C CNN
F 1 "R2" V 8375 1550 50  0000 C CNN
F 2 "" H 8475 1550 50  0001 C CNN
F 3 "" H 8475 1550 50  0001 C CNN
	1    8475 1550
	-1   0    0    1   
$EndComp
$Comp
L CONN_02X08 J1
U 1 1 594C2861
P 4850 7250
F 0 "J1" H 4850 7700 50  0000 C CNN
F 1 "CONN_02X08" V 4850 7250 50  0000 C CNN
F 2 "" H 4850 6050 50  0001 C CNN
F 3 "" H 4850 6050 50  0001 C CNN
	1    4850 7250
	1    0    0    -1  
$EndComp
Text GLabel 4150 6900 0    60   Input ~ 0
ECG_V7P
Text GLabel 4150 7000 0    60   Input ~ 0
ECG_V7N
Text GLabel 4150 7100 0    60   Input ~ 0
ECG_V8P
Text GLabel 4150 7200 0    60   Input ~ 0
ECG_V8N
Text GLabel 4150 7300 0    60   Input ~ 0
ECG_V9P
Text GLabel 4150 7400 0    60   Input ~ 0
ECG_V9N
Text GLabel 4150 7500 0    60   Input ~ 0
ECG_V10P
Text GLabel 4150 7600 0    60   Input ~ 0
ECG_V10N
Text GLabel 5500 6900 2    60   Input ~ 0
ECG_V11P
Text GLabel 5500 7000 2    60   Input ~ 0
ECV_V11N
Text GLabel 5500 7100 2    60   Input ~ 0
ECV_V12P
Text GLabel 5500 7200 2    60   Input ~ 0
ECV_V12N
Text GLabel 5500 7300 2    60   Input ~ 0
ECV_V13P
Text GLabel 5500 7400 2    60   Input ~ 0
ECV_V13N
Text GLabel 5500 7500 2    60   Input ~ 0
ECV_V14P
Text GLabel 5500 7600 2    60   Input ~ 0
ECV_V14N
Text Label 3050 1175 0    60   ~ 0
WCT
$Sheet
S 1025 825  1425 600 
U 59470A40
F0 "Connector" 60
F1 "Connectors.sch" 60
$EndSheet
$Sheet
S 900  6925 1700 650 
U 59470E15
F0 "ADC1298_ECG_FE" 60
F1 "ADC1298_ECG_FE.sch" 60
$EndSheet
Text GLabel 9825 625  2    39   Input Italic 8
AVSS
Text GLabel 9100 725  0    39   Input Italic 8
AGND
Text GLabel 9100 1475 0    39   Input Italic 8
AGND
Text GLabel 9825 1575 0    39   Input Italic 8
AVDD
Text GLabel 10025 1375 2    39   Input Italic 8
DVDD
Text GLabel 10025 1925 0    39   Input Italic 8
AGND
Text GLabel 11075 2175 0    39   Input Italic 8
AGND
Text GLabel 8475 1800 2    39   Input Italic 8
AVSS
Text GLabel 8475 925  0    39   Input Italic 8
AVDD
Text GLabel 6300 1425 2    39   Input Italic 8
AVSS
Text GLabel 7350 1675 2    39   Input Italic 8
AVSS
Text GLabel 6775 2125 2    39   Input Italic 8
AGND
Text GLabel 5900 1925 2    39   Input Italic 8
AVDD
Text GLabel 4150 975  2    39   Input Italic 8
AVSS
Text GLabel 4475 3025 0    39   Input Italic 8
AGND
Text GLabel 6000 2925 2    39   Input Italic 8
AGND
Text GLabel 2900 3850 2    39   Input Italic 8
DVDD
Text GLabel 1725 4275 2    39   Input Italic 8
AVSS
Text GLabel 1025 4650 2    39   Input Italic 8
AVSS
Text GLabel 5450 3925 3    39   Input Italic 8
AVSS
Text GLabel 2000 5600 2    39   Input Italic 8
AVSS
Text GLabel 2750 5650 2    39   Input Italic 8
AGND
Text GLabel 9025 4300 2    39   Input Italic 8
DVDD
Connection ~ 3000 2750
Connection ~ 4150 1450
Wire Wire Line
	4150 2025 4525 2025
Connection ~ 9100 2300
Wire Wire Line
	6450 2300 9400 2300
Connection ~ 9000 2725
Wire Wire Line
	9000 2575 9000 4075
Wire Wire Line
	9100 4025 8575 4025
Wire Wire Line
	9100 2300 9100 4025
Wire Wire Line
	5750 2675 6450 2675
Wire Wire Line
	9000 4075 8575 4075
Wire Wire Line
	5750 2725 9000 2725
Wire Wire Line
	8950 4125 8575 4125
Wire Wire Line
	3925 3375 3750 3375
Wire Wire Line
	3925 2825 3925 3375
Wire Wire Line
	3925 2825 4525 2825
Wire Wire Line
	3900 3325 3750 3325
Wire Wire Line
	3900 2775 3900 3325
Wire Wire Line
	3900 2775 4525 2775
Wire Wire Line
	3875 2725 4525 2725
Wire Wire Line
	3875 3075 3875 2725
Wire Wire Line
	3750 3075 3875 3075
Wire Wire Line
	3850 3025 3750 3025
Wire Wire Line
	3850 2675 3850 3025
Wire Wire Line
	3850 2675 4525 2675
Wire Wire Line
	3825 2625 4525 2625
Wire Wire Line
	3825 2800 3825 2625
Wire Wire Line
	3750 2800 3825 2800
Wire Wire Line
	3800 2575 4525 2575
Wire Wire Line
	3800 2750 3800 2575
Wire Wire Line
	3750 2750 3800 2750
Wire Wire Line
	3750 2525 4525 2525
Wire Wire Line
	3750 2475 4525 2475
Wire Wire Line
	3800 2425 4525 2425
Wire Wire Line
	3800 2250 3800 2425
Wire Wire Line
	3750 2250 3800 2250
Wire Wire Line
	3825 2375 4525 2375
Wire Wire Line
	3825 2200 3825 2375
Wire Wire Line
	3750 2200 3825 2200
Wire Wire Line
	3850 2325 4525 2325
Wire Wire Line
	3850 2000 3850 2325
Wire Wire Line
	3750 2000 3850 2000
Wire Wire Line
	3875 2275 4525 2275
Wire Wire Line
	3875 1950 3875 2275
Wire Wire Line
	3750 1950 3875 1950
Wire Wire Line
	3900 2225 4525 2225
Wire Wire Line
	3900 1750 3900 2225
Wire Wire Line
	3750 1750 3900 1750
Wire Wire Line
	3925 2175 4525 2175
Wire Wire Line
	3925 1700 3925 2175
Wire Wire Line
	3750 1700 3925 1700
Wire Wire Line
	3950 1500 3750 1500
Wire Wire Line
	3950 2125 3950 1500
Wire Wire Line
	3950 2125 4525 2125
Wire Wire Line
	3975 2075 4525 2075
Wire Wire Line
	3975 1450 3975 2075
Wire Wire Line
	3750 1450 3975 1450
Wire Wire Line
	4000 1450 4150 1450
Wire Wire Line
	4150 1375 4150 2025
Wire Wire Line
	4000 1175 4000 1450
Wire Wire Line
	3750 1175 4000 1175
Wire Wire Line
	4150 975  4150 1075
Connection ~ 3050 1450
Wire Wire Line
	3050 1175 3150 1175
Connection ~ 3050 1700
Connection ~ 3050 1950
Wire Wire Line
	3050 1700 3150 1700
Connection ~ 3050 2200
Wire Wire Line
	3050 1950 3150 1950
Connection ~ 3050 2475
Wire Wire Line
	3050 2200 3150 2200
Wire Wire Line
	3050 2475 3150 2475
Wire Wire Line
	3050 1175 3050 3325
Wire Wire Line
	3050 3325 3150 3325
Wire Wire Line
	3000 2750 3150 2750
Wire Wire Line
	3000 3025 3150 3025
Wire Wire Line
	3000 2700 3000 3025
Wire Wire Line
	2950 2825 2950 3075
Wire Wire Line
	1075 2825 2950 2825
Wire Wire Line
	2950 3075 3150 3075
Wire Wire Line
	1075 2700 3000 2700
Wire Wire Line
	1075 2575 3150 2575
Wire Wire Line
	2950 2525 3150 2525
Wire Wire Line
	2950 2450 2950 2525
Wire Wire Line
	1075 2450 2950 2450
Wire Wire Line
	1075 2325 2950 2325
Wire Wire Line
	2950 2325 2950 2250
Wire Wire Line
	2950 2250 3150 2250
Wire Wire Line
	2950 2000 3150 2000
Wire Wire Line
	2950 2200 2950 2000
Wire Wire Line
	1075 2200 2950 2200
Wire Wire Line
	1075 2075 2900 2075
Wire Wire Line
	2900 2075 2900 1750
Wire Wire Line
	2900 1750 3150 1750
Wire Wire Line
	2875 1500 3150 1500
Wire Wire Line
	2875 1950 2875 1500
Wire Wire Line
	2425 1825 2425 3375
Wire Wire Line
	2425 3375 3150 3375
Wire Wire Line
	5325 3125 5325 3325
Wire Wire Line
	8750 3775 8575 3775
Wire Wire Line
	8000 4475 8000 4600
Wire Wire Line
	8000 4600 8650 4600
Wire Wire Line
	8650 4600 8650 5300
Wire Wire Line
	8650 5300 9100 5300
Wire Wire Line
	9100 5150 8750 5150
Wire Wire Line
	8750 5150 8750 4550
Wire Wire Line
	8750 4550 8100 4550
Wire Wire Line
	8100 4550 8100 4475
Wire Wire Line
	8150 4475 8150 4650
Wire Wire Line
	8150 4650 8600 4650
Wire Wire Line
	8600 4650 8600 5450
Wire Wire Line
	8600 5450 9100 5450
Wire Wire Line
	8250 4475 8800 4475
Wire Wire Line
	8800 4475 8800 5000
Wire Wire Line
	8800 5000 9100 5000
Wire Wire Line
	8925 4825 8925 5000
Connection ~ 8925 5000
Wire Wire Line
	8925 4525 8925 4400
Wire Wire Line
	8925 4400 9175 4400
Wire Wire Line
	9175 4400 9175 4525
Wire Wire Line
	9175 4825 9000 4825
Wire Wire Line
	9000 4825 9000 5600
Connection ~ 9000 5300
Wire Wire Line
	9000 6200 9125 6200
Wire Wire Line
	9025 4300 9025 4400
Connection ~ 9025 4400
Wire Wire Line
	8200 4475 8200 4700
Wire Wire Line
	8200 4700 8575 4700
Wire Wire Line
	8575 4700 8575 5600
Wire Wire Line
	8575 5900 8575 6025
Wire Wire Line
	8050 4475 8050 4725
Wire Wire Line
	8050 4725 8325 4725
Wire Wire Line
	7750 4475 7750 4700
Wire Wire Line
	7750 4700 7400 4700
Wire Wire Line
	7375 5725 7650 5725
Wire Wire Line
	7650 5725 7650 4475
Wire Wire Line
	7700 5550 7700 4475
Wire Wire Line
	7400 5300 7400 5400
Wire Wire Line
	7400 4700 7400 5000
Wire Wire Line
	7900 4475 7900 4825
Wire Wire Line
	7900 4825 8100 4825
Wire Wire Line
	7800 6000 7375 6000
Wire Wire Line
	7800 4475 7800 6000
Wire Wire Line
	7500 6150 7500 6000
Connection ~ 7500 6000
Wire Wire Line
	7800 5275 7925 5275
Connection ~ 7800 5275
Wire Wire Line
	7800 5000 7925 5000
Connection ~ 7800 5000
Wire Wire Line
	8225 4900 8225 5275
Wire Wire Line
	8225 4900 8025 4900
Wire Wire Line
	8025 4900 8025 4825
Connection ~ 8025 4825
Connection ~ 8225 5000
Wire Wire Line
	5750 2425 6100 2425
Wire Wire Line
	1625 3750 1625 4050
Wire Wire Line
	1625 4050 2275 4050
Wire Wire Line
	2275 4050 2275 4750
Wire Wire Line
	2275 4750 2625 4750
Wire Wire Line
	2550 3975 2550 3850
Wire Wire Line
	2800 3850 2800 3975
Wire Wire Line
	2800 4275 2625 4275
Wire Wire Line
	2625 4275 2625 5050
Connection ~ 2625 4750
Wire Wire Line
	2625 5650 2750 5650
Wire Wire Line
	1675 3800 1675 4175
Wire Wire Line
	1675 4175 2000 4175
Wire Wire Line
	2000 4175 2000 5175
Wire Wire Line
	1375 3600 1375 3950
Wire Wire Line
	1375 3950 1025 3950
Wire Wire Line
	1275 4975 1075 4975
Wire Wire Line
	1275 3475 1275 4975
Wire Wire Line
	1325 5100 1075 5100
Wire Wire Line
	1325 3550 1325 5100
Wire Wire Line
	1025 4550 1025 4650
Wire Wire Line
	1025 3950 1025 4250
Wire Wire Line
	1525 3700 1525 4275
Wire Wire Line
	1525 4275 1725 4275
Wire Wire Line
	1425 5450 1075 5450
Wire Wire Line
	1425 3650 1425 5450
Wire Wire Line
	1200 5600 1200 5450
Connection ~ 1200 5450
Wire Wire Line
	1425 4725 1550 4725
Connection ~ 1425 4725
Wire Wire Line
	1425 4450 1550 4450
Connection ~ 1425 4450
Wire Wire Line
	1850 4350 1850 4725
Wire Wire Line
	1850 4350 1650 4350
Wire Wire Line
	1650 4350 1650 4275
Connection ~ 1650 4275
Connection ~ 1850 4450
Wire Wire Line
	4875 3125 4875 3550
Wire Wire Line
	4875 3550 1325 3550
Wire Wire Line
	1275 3475 4825 3475
Wire Wire Line
	4825 3475 4825 3125
Wire Wire Line
	1375 3600 4925 3600
Wire Wire Line
	4925 3600 4925 3125
Wire Wire Line
	2550 3850 2900 3850
Connection ~ 2800 3850
Wire Wire Line
	4975 3125 4975 3650
Wire Wire Line
	4975 3650 1425 3650
Wire Wire Line
	5075 3125 5075 3700
Wire Wire Line
	5075 3700 1525 3700
Wire Wire Line
	1625 3750 5175 3750
Wire Wire Line
	5175 3750 5175 3125
Wire Wire Line
	5375 3550 5450 3550
Wire Wire Line
	5375 3125 5375 3550
Wire Wire Line
	5325 3500 5425 3500
Wire Wire Line
	5425 3500 5425 3125
Wire Wire Line
	5275 3875 5275 3125
Wire Wire Line
	4325 3875 5275 3875
Wire Wire Line
	2875 4250 4700 4250
Wire Wire Line
	2875 4450 2875 4250
Wire Wire Line
	5225 3125 5225 3800
Wire Wire Line
	5225 3800 1675 3800
Wire Wire Line
	5750 2575 7200 2575
Connection ~ 7125 2575
Wire Wire Line
	7125 2575 7125 2675
Wire Wire Line
	7125 2675 8800 2675
Wire Wire Line
	8800 2675 8800 3925
Wire Wire Line
	8800 3925 8575 3925
Wire Wire Line
	8575 3975 9250 3975
Wire Wire Line
	5750 2625 7050 2625
Wire Wire Line
	7050 2625 7050 2800
Wire Wire Line
	8950 2925 8950 4125
Wire Wire Line
	6950 2925 9800 2925
Connection ~ 8950 2925
Wire Wire Line
	6950 2775 6950 2925
Wire Wire Line
	5750 2775 6950 2775
Wire Wire Line
	5325 3325 6000 3325
Wire Wire Line
	6000 3325 6000 3000
Wire Wire Line
	6000 3000 8750 3000
Wire Wire Line
	8750 3000 8750 3775
Wire Wire Line
	6450 2675 6450 2300
Wire Wire Line
	5450 3850 5450 3925
Wire Wire Line
	10525 6150 10525 6250
Wire Wire Line
	10525 6250 11050 6250
Wire Wire Line
	11050 6250 11050 6150
Wire Wire Line
	10875 6150 10875 6250
Connection ~ 10875 6250
Wire Wire Line
	10700 6150 10700 6250
Connection ~ 10700 6250
Wire Wire Line
	10800 6250 10800 6325
Connection ~ 10800 6250
Wire Wire Line
	850  6250 1150 6250
Wire Wire Line
	850  6550 1150 6550
Wire Wire Line
	1000 6250 1000 6150
Connection ~ 1000 6250
Wire Wire Line
	1000 6550 1000 6650
Connection ~ 1000 6550
Wire Wire Line
	1450 6250 1750 6250
Wire Wire Line
	1450 6550 1750 6550
Wire Wire Line
	1600 6250 1600 6150
Connection ~ 1600 6250
Wire Wire Line
	1600 6550 1600 6650
Connection ~ 1600 6550
Wire Wire Line
	2025 6250 2325 6250
Wire Wire Line
	2025 6550 2325 6550
Wire Wire Line
	2175 6250 2175 6150
Connection ~ 2175 6250
Wire Wire Line
	2175 6550 2175 6650
Connection ~ 2175 6550
Wire Wire Line
	2600 6250 2900 6250
Wire Wire Line
	2600 6550 2900 6550
Wire Wire Line
	2750 6250 2750 6150
Connection ~ 2750 6250
Wire Wire Line
	2750 6550 2750 6650
Connection ~ 2750 6550
Wire Wire Line
	9825 1475 9575 1475
Wire Wire Line
	9825 1400 9825 1575
Connection ~ 9825 1475
Wire Wire Line
	10225 1100 10575 1100
Wire Wire Line
	9625 1000 9500 1000
Wire Wire Line
	9500 1000 9500 825 
Wire Wire Line
	9500 825  10250 825 
Wire Wire Line
	10250 825  10250 1100
Connection ~ 10250 1100
Wire Wire Line
	9825 625  9825 800 
Wire Wire Line
	9825 725  9575 725 
Connection ~ 9825 725 
Wire Wire Line
	9100 725  9275 725 
Wire Wire Line
	9100 1475 9275 1475
Wire Wire Line
	9625 1200 9325 1200
Wire Wire Line
	4650 600  4650 1725
Wire Wire Line
	9025 1200 8850 1200
Wire Wire Line
	6925 850  8850 850 
Wire Wire Line
	8850 850  8850 1200
Wire Wire Line
	4650 600  6825 600 
Wire Wire Line
	4725 1100 4725 1275
Wire Wire Line
	4650 1725 4775 1725
Wire Wire Line
	4825 1675 4725 1675
Wire Wire Line
	4725 1675 4725 1575
Wire Wire Line
	4825 1675 4825 1725
Connection ~ 4875 1100
Wire Wire Line
	4875 1100 4875 1325
Wire Wire Line
	4875 1525 4875 1725
Wire Wire Line
	5250 700  5250 600 
Connection ~ 5250 600 
Wire Wire Line
	5250 1100 5250 1000
Connection ~ 5250 1100
Wire Wire Line
	5650 1100 5650 1000
Connection ~ 5650 1100
Wire Wire Line
	5650 700  5650 600 
Connection ~ 5650 600 
Connection ~ 4650 1175
Wire Wire Line
	4650 1175 7600 1175
Wire Wire Line
	7600 1175 7600 3075
Connection ~ 6825 1100
Wire Wire Line
	4725 1100 7800 1100
Wire Wire Line
	4925 1725 4925 1250
Wire Wire Line
	4925 1250 8225 1250
Wire Wire Line
	4975 1725 4975 1450
Wire Wire Line
	4975 1450 5475 1450
Wire Wire Line
	5075 1675 7350 1675
Wire Wire Line
	5025 1725 5025 1450
Connection ~ 5025 1450
Wire Wire Line
	5100 1350 5100 1450
Connection ~ 5100 1450
Wire Wire Line
	5125 1675 5125 1725
Wire Wire Line
	5175 1725 5175 1675
Connection ~ 5175 1675
Wire Wire Line
	5225 1675 5225 1725
Connection ~ 5225 1675
Wire Wire Line
	5275 1725 5275 1450
Connection ~ 5275 1450
Wire Wire Line
	5325 1725 5325 1450
Connection ~ 5325 1450
Wire Wire Line
	5375 1450 5375 1725
Connection ~ 5375 1450
Wire Wire Line
	5525 1675 5525 1725
Wire Wire Line
	5475 1450 5475 1725
Wire Wire Line
	5425 1725 5425 1500
Wire Wire Line
	5425 1500 5975 1500
Connection ~ 5525 1675
Wire Wire Line
	5750 2175 5850 2175
Wire Wire Line
	5850 2175 5850 1675
Connection ~ 5850 1675
Wire Wire Line
	5975 1350 5850 1350
Wire Wire Line
	5850 1350 5850 1500
Connection ~ 5850 1500
Wire Wire Line
	6175 1350 6250 1350
Wire Wire Line
	6250 1350 6250 1500
Wire Wire Line
	6250 1500 6175 1500
Wire Wire Line
	6250 1425 6300 1425
Connection ~ 6250 1425
Wire Wire Line
	5075 1675 5075 1725
Connection ~ 5125 1675
Wire Wire Line
	6650 1900 6650 1950
Wire Wire Line
	6650 1950 6900 1950
Wire Wire Line
	6900 1950 6900 1900
Wire Wire Line
	6775 1950 6775 2125
Connection ~ 6775 1950
Wire Wire Line
	7800 3075 7800 2425
Wire Wire Line
	7800 2425 8300 2425
Wire Wire Line
	8300 2425 8300 3075
Wire Wire Line
	8200 3075 8200 2425
Connection ~ 8200 2425
Wire Wire Line
	8150 2425 8150 3075
Connection ~ 8150 2425
Wire Wire Line
	8100 3075 8100 2425
Connection ~ 8100 2425
Wire Wire Line
	7850 3075 7850 2425
Connection ~ 7850 2425
Wire Wire Line
	7975 2425 7975 2400
Connection ~ 7975 2425
Wire Wire Line
	8350 2050 8350 3075
Wire Wire Line
	7900 2525 8625 2525
Wire Wire Line
	7900 2525 7900 3075
Wire Wire Line
	7950 3075 7950 2525
Connection ~ 7950 2525
Wire Wire Line
	8000 2525 8000 3075
Connection ~ 8000 2525
Wire Wire Line
	8050 2525 8050 3075
Connection ~ 8050 2525
Wire Wire Line
	8575 3525 8625 3525
Wire Wire Line
	8625 3525 8625 2525
Connection ~ 8350 2525
Wire Wire Line
	8350 2050 6375 2050
Wire Wire Line
	6375 2050 6375 1675
Connection ~ 6375 1675
Wire Wire Line
	5700 1500 5700 1600
Wire Wire Line
	5700 1600 8250 1600
Wire Wire Line
	8250 1600 8250 3075
Connection ~ 5700 1500
Wire Wire Line
	8475 1175 8475 1400
Wire Wire Line
	8475 1250 8425 1250
Wire Wire Line
	8475 975  8475 925 
Connection ~ 8475 1250
Wire Wire Line
	8475 1700 8475 1800
Wire Wire Line
	6650 1700 6650 1675
Connection ~ 6650 1675
Wire Wire Line
	6900 1700 6900 1675
Connection ~ 6900 1675
Wire Wire Line
	9500 2550 9975 2550
Wire Wire Line
	9500 2050 10225 2050
Wire Wire Line
	10225 1825 10175 1825
Wire Wire Line
	10175 1825 10175 1500
Wire Wire Line
	10025 1500 11075 1500
Wire Wire Line
	11075 1500 11075 1575
Wire Wire Line
	10975 1825 10875 1825
Wire Wire Line
	10875 2050 10925 2050
Wire Wire Line
	10925 2050 10925 2075
Wire Wire Line
	10925 2075 11075 2075
Wire Wire Line
	11075 2075 11075 2175
Connection ~ 10175 1500
Wire Wire Line
	10025 1375 10025 1600
Wire Wire Line
	10025 1800 10025 1925
Connection ~ 10025 1500
Wire Wire Line
	5750 2125 5900 2125
Wire Wire Line
	5900 1925 5900 2275
Wire Wire Line
	5900 2275 5750 2275
Connection ~ 5900 2125
Wire Wire Line
	5750 2075 6000 2075
Wire Wire Line
	6000 2075 6000 2925
Wire Wire Line
	6000 2825 5750 2825
Wire Wire Line
	5750 2225 6000 2225
Connection ~ 6000 2225
Wire Wire Line
	8575 3425 8900 3425
Wire Wire Line
	8900 3425 8900 4175
Wire Wire Line
	8575 3575 8900 3575
Connection ~ 8900 3575
Wire Wire Line
	8900 4175 8575 4175
Wire Wire Line
	8575 3475 8850 3475
Wire Wire Line
	8850 3275 8850 3625
Wire Wire Line
	8850 3625 8575 3625
Connection ~ 8850 3475
Wire Wire Line
	8575 3725 9300 3725
Wire Wire Line
	8575 3825 9300 3825
Wire Wire Line
	5750 2025 6100 2025
Wire Wire Line
	5750 2325 6050 2325
Wire Wire Line
	6050 2325 6050 2250
Wire Wire Line
	6050 2250 6100 2250
Wire Wire Line
	6100 2350 6050 2350
Wire Wire Line
	6050 2350 6050 2375
Wire Wire Line
	6050 2375 5750 2375
Wire Wire Line
	5750 2475 6550 2475
Wire Wire Line
	6100 2525 5750 2525
Wire Wire Line
	8575 3875 9250 3875
Wire Wire Line
	9250 3875 9250 3925
Wire Wire Line
	9250 3925 9300 3925
Wire Wire Line
	8575 3375 9300 3375
Wire Wire Line
	7050 2800 9350 2800
Wire Wire Line
	9300 4025 9250 4025
Wire Wire Line
	9250 4025 9250 3975
Wire Wire Line
	8575 3675 9250 3675
Wire Wire Line
	9250 3675 9250 3625
Wire Wire Line
	9250 3625 9300 3625
Wire Wire Line
	3150 2575 3150 2800
Wire Wire Line
	3050 1450 3150 1450
Wire Wire Line
	7375 5550 7700 5550
Wire Wire Line
	5325 4025 5325 3500
Wire Wire Line
	4325 4025 5325 4025
Connection ~ 4700 4025
Wire Wire Line
	4700 4250 4700 4025
Wire Wire Line
	4725 4525 4575 4525
Wire Wire Line
	4725 4575 4175 4575
Wire Wire Line
	4725 4775 4575 4775
Wire Wire Line
	4575 4775 4575 4700
Wire Wire Line
	4575 4700 4175 4700
Wire Wire Line
	4175 4825 4725 4825
Wire Wire Line
	4725 5025 4500 5025
Wire Wire Line
	4500 5025 4500 4950
Wire Wire Line
	4500 4950 4175 4950
Wire Wire Line
	4175 5075 4725 5075
Wire Wire Line
	4725 5325 4175 5325
Wire Wire Line
	4725 5600 4175 5600
Wire Wire Line
	4175 5600 4175 5575
Wire Wire Line
	4725 5875 4475 5875
Wire Wire Line
	4475 5875 4475 5825
Wire Wire Line
	4475 5825 4175 5825
Wire Wire Line
	4525 6075 4175 6075
Wire Wire Line
	4525 6075 4525 6150
Wire Wire Line
	4525 6150 4725 6150
Wire Wire Line
	4175 6325 4500 6325
Wire Wire Line
	4500 6325 4500 6450
Wire Wire Line
	4725 6400 4725 6300
Wire Wire Line
	4725 6300 4275 6300
Wire Wire Line
	4275 6300 4275 6200
Wire Wire Line
	4275 6200 4175 6200
Wire Wire Line
	4175 5950 4600 5950
Wire Wire Line
	4600 5950 4600 6100
Wire Wire Line
	4600 6100 4725 6100
Wire Wire Line
	4725 5800 4550 5800
Wire Wire Line
	4550 5800 4550 5725
Wire Wire Line
	4550 5725 4175 5725
Wire Wire Line
	4175 5725 4175 5700
Wire Wire Line
	4725 5825 4725 5800
Wire Wire Line
	4725 5550 4725 5450
Wire Wire Line
	4725 5450 4175 5450
Wire Wire Line
	4725 5275 4175 5275
Wire Wire Line
	4175 5275 4175 5200
Wire Wire Line
	8475 1400 8325 1400
Wire Wire Line
	8325 1400 8325 1550
Wire Wire Line
	4500 6450 4725 6450
Wire Wire Line
	4175 4450 4575 4450
Wire Wire Line
	4575 4450 4575 4525
Wire Wire Line
	7350 3425 5925 3425
Wire Wire Line
	5925 3425 5925 4525
Wire Wire Line
	5925 4525 5325 4525
Wire Wire Line
	7350 3475 5975 3475
Wire Wire Line
	5975 3475 5975 4575
Wire Wire Line
	5975 4575 5325 4575
Wire Wire Line
	7350 3525 6025 3525
Wire Wire Line
	6025 3525 6025 4775
Wire Wire Line
	6025 4775 5325 4775
Wire Wire Line
	5325 4825 6075 4825
Wire Wire Line
	6075 4825 6075 3575
Wire Wire Line
	6075 3575 7350 3575
Wire Wire Line
	7350 3625 6125 3625
Wire Wire Line
	6125 3625 6125 5025
Wire Wire Line
	6125 5025 5325 5025
Wire Wire Line
	7350 3675 6175 3675
Wire Wire Line
	6175 3675 6175 5075
Wire Wire Line
	6175 5075 5325 5075
Wire Wire Line
	7350 3725 6225 3725
Wire Wire Line
	6225 3725 6225 5275
Wire Wire Line
	6225 5275 5325 5275
Wire Wire Line
	7350 3775 6275 3775
Wire Wire Line
	6275 3775 6275 5325
Wire Wire Line
	6275 5325 5325 5325
Wire Wire Line
	7350 3825 6325 3825
Wire Wire Line
	6325 3825 6325 5550
Wire Wire Line
	6325 5550 5325 5550
Wire Wire Line
	7350 3875 6375 3875
Wire Wire Line
	6375 3875 6375 5600
Wire Wire Line
	6375 5600 5325 5600
Wire Wire Line
	7350 3925 6425 3925
Wire Wire Line
	6425 3925 6425 5825
Wire Wire Line
	6425 5825 5325 5825
Wire Wire Line
	5325 5875 6475 5875
Wire Wire Line
	6475 5875 6475 3975
Wire Wire Line
	6475 3975 7350 3975
Wire Wire Line
	7350 4025 6525 4025
Wire Wire Line
	6525 4025 6525 6100
Wire Wire Line
	6525 6100 5325 6100
Wire Wire Line
	7350 4075 6575 4075
Wire Wire Line
	6575 4075 6575 6150
Wire Wire Line
	6575 6150 5325 6150
Wire Wire Line
	7350 4125 6625 4125
Wire Wire Line
	6625 4125 6625 6400
Wire Wire Line
	6625 6400 5325 6400
Wire Wire Line
	7350 4175 6675 4175
Wire Wire Line
	6675 4175 6675 6450
Wire Wire Line
	6675 6450 5325 6450
Wire Wire Line
	4600 6900 4150 6900
Wire Wire Line
	4600 7100 4150 7100
Wire Wire Line
	4600 7000 4150 7000
Wire Wire Line
	4150 7200 4600 7200
Wire Wire Line
	4150 7300 4600 7300
Wire Wire Line
	4600 7400 4150 7400
Wire Wire Line
	4150 7500 4600 7500
Wire Wire Line
	4600 7600 4150 7600
Wire Wire Line
	5100 6900 5500 6900
Wire Wire Line
	5100 7000 5500 7000
Wire Wire Line
	5500 7100 5100 7100
Wire Wire Line
	5100 7200 5500 7200
Wire Wire Line
	5100 7300 5500 7300
Wire Wire Line
	5100 7400 5500 7400
Wire Wire Line
	5500 7500 5100 7500
Wire Wire Line
	5100 7600 5500 7600
Wire Wire Line
	2425 1825 1075 1825
Wire Wire Line
	1075 1950 2875 1950
Wire Wire Line
	2000 5475 2000 5600
Wire Wire Line
	8325 4725 8325 5725
Wire Wire Line
	8325 6200 8325 6025
Wire Wire Line
	2775 4925 2625 4925
Connection ~ 2625 4925
Wire Wire Line
	2550 4275 2550 4450
Wire Wire Line
	2550 4450 2875 4450
Wire Wire Line
	4525 2875 4475 2875
Wire Wire Line
	4475 2875 4475 3025
Connection ~ 6000 2825
Text GLabel 8100 4825 2    39   Input Italic 8
AVSS
Text GLabel 9125 6200 2    39   Input Italic 8
AGND
Text GLabel 8325 6200 2    39   Input Italic 8
AVSS
Text GLabel 8575 6025 2    39   Input Italic 8
AVSS
Text GLabel 2750 6150 2    39   Input Italic 8
DVDD
Text GLabel 2750 6650 2    39   Input Italic 8
AGND
Text GLabel 2175 6650 2    39   Input Italic 8
AGND
Text GLabel 2175 6150 2    39   Input Italic 8
AVDD
Text GLabel 1600 6150 2    39   Input Italic 8
AVDD
Text GLabel 1000 6150 2    39   Input Italic 8
AVDD
Text GLabel 1600 6650 2    39   Input Italic 8
AVSS
Text GLabel 1000 6650 2    39   Input Italic 8
AVSS
$EndSCHEMATC
