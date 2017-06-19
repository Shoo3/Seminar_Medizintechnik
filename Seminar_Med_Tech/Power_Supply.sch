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
Sheet 4 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 7475 3025 2    60   Output ~ 0
AVDD
Text GLabel 7400 2275 2    60   Output ~ 0
AVSS
Text GLabel 1550 2775 0    60   Output ~ 0
15V_Supply
Wire Wire Line
	1550 2775 2075 2775
$Comp
L LM317T U?
U 1 1 5947A8F6
P 2475 2825
F 0 "U?" H 2275 3025 50  0000 C CNN
F 1 "LM317T" H 2475 3025 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220_Vertical" H 2475 2925 50  0001 C CIN
F 3 "" H 2475 2825 50  0001 C CNN
	1    2475 2825
	1    0    0    -1  
$EndComp
$EndSCHEMATC
