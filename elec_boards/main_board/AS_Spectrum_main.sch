EESchema Schematic File Version 4
EELAYER 30 0
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
L Connector_Generic:Conn_01x03 J1
U 1 1 6014008B
P 750 900
F 0 "J1" H 670 575 50  0000 C CNN
F 1 "MODE" H 670 666 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 750 900 50  0001 C CNN
F 3 "~" H 750 900 50  0001 C CNN
	1    750  900 
	-1   0    0    1   
$EndComp
Text GLabel 1050 900  2    50   Input ~ 0
3.3V_NUC
Text GLabel 1050 1000 2    50   Input ~ 0
MODE
Wire Wire Line
	950  800  1050 800 
Wire Wire Line
	950  900  1050 900 
Wire Wire Line
	950  1000 1050 1000
$Comp
L Connector_Generic:Conn_01x10 J9
U 1 1 602788C8
P 5200 7050
F 0 "J9" H 5150 7650 50  0000 L CNN
F 1 "RN42X-GAUCHE" H 4900 7550 50  0000 L CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_1x10_P2.00mm_Vertical" H 5200 7050 50  0001 C CNN
F 3 "~" H 5200 7050 50  0001 C CNN
	1    5200 7050
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x10 J11
U 1 1 6027A456
P 5800 7050
F 0 "J11" H 5800 7650 50  0000 C CNN
F 1 "RN42X-DROITE" H 5800 7550 50  0000 C CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_1x10_P2.00mm_Vertical" H 5800 7050 50  0001 C CNN
F 3 "~" H 5800 7050 50  0001 C CNN
	1    5800 7050
	-1   0    0    -1  
$EndComp
Text GLabel 4900 6650 0    50   Input ~ 0
3.3V_NUC
$Comp
L power:GND #PWR01
U 1 1 6027BAC0
P 4900 7550
F 0 "#PWR01" H 4900 7300 50  0001 C CNN
F 1 "GND" V 4905 7422 50  0000 R CNN
F 2 "" H 4900 7550 50  0001 C CNN
F 3 "" H 4900 7550 50  0001 C CNN
	1    4900 7550
	0    1    1    0   
$EndComp
Text GLabel 4900 6750 0    50   Input ~ 0
S3_RX
Text GLabel 4900 6850 0    50   Input ~ 0
S3_TX
Text GLabel 4900 7050 0    50   Input ~ 0
RESET_N
Text GLabel 6100 7350 2    50   Input ~ 0
GPIO2_STATUS
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J10
U 1 1 6028781C
P 4600 3250
F 0 "J10" H 4650 4367 50  0000 C CNN
F 1 "Morpho_Gauche" H 4650 4276 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 4600 3250 50  0001 C CNN
F 3 "~" H 4600 3250 50  0001 C CNN
	1    4600 3250
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J14
U 1 1 60289ED3
P 6350 3250
F 0 "J14" H 6400 4367 50  0000 C CNN
F 1 "Morpho_Droite" H 6400 4276 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 6350 3250 50  0001 C CNN
F 3 "~" H 6350 3250 50  0001 C CNN
	1    6350 3250
	1    0    0    -1  
$EndComp
Text GLabel 4300 2450 0    50   Input ~ 0
S3_TX
$Comp
L power:GND #PWR02
U 1 1 60290C89
P 4300 3350
F 0 "#PWR02" H 4300 3100 50  0001 C CNN
F 1 "GND" V 4305 3222 50  0000 R CNN
F 2 "" H 4300 3350 50  0001 C CNN
F 3 "" H 4300 3350 50  0001 C CNN
	1    4300 3350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 602916F0
P 5000 3350
F 0 "#PWR03" H 5000 3100 50  0001 C CNN
F 1 "GND" V 5005 3222 50  0000 R CNN
F 2 "" H 5000 3350 50  0001 C CNN
F 3 "" H 5000 3350 50  0001 C CNN
	1    5000 3350
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 60291C87
P 5000 3450
F 0 "#PWR04" H 5000 3200 50  0001 C CNN
F 1 "GND" V 5005 3322 50  0000 R CNN
F 2 "" H 5000 3450 50  0001 C CNN
F 3 "" H 5000 3450 50  0001 C CNN
	1    5000 3450
	0    -1   -1   0   
$EndComp
Text GLabel 5000 3550 2    50   Input ~ 0
VIN
Text GLabel 5000 2450 2    50   Input ~ 0
S3_RX
Text GLabel 5000 3250 2    50   Input ~ 0
5V_NUC
Wire Wire Line
	4900 7550 5000 7550
Wire Wire Line
	4900 7050 5000 7050
Wire Wire Line
	4900 6850 5000 6850
Wire Wire Line
	4900 6650 5000 6650
Wire Wire Line
	4900 6750 5000 6750
Wire Wire Line
	6000 7350 6100 7350
$Comp
L power:GND #PWR08
U 1 1 602A28D6
P 6750 3350
F 0 "#PWR08" H 6750 3100 50  0001 C CNN
F 1 "GND" V 6755 3222 50  0000 R CNN
F 2 "" H 6750 3350 50  0001 C CNN
F 3 "" H 6750 3350 50  0001 C CNN
	1    6750 3350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6650 3350 6750 3350
Wire Wire Line
	5000 3250 4900 3250
Wire Wire Line
	4400 2450 4300 2450
Wire Wire Line
	4900 2450 5000 2450
Wire Wire Line
	4900 3350 5000 3350
Wire Wire Line
	4300 3350 4400 3350
Wire Wire Line
	4900 3450 5000 3450
Wire Wire Line
	4900 3550 5000 3550
Wire Notes Line
	4500 6350 6750 6350
Wire Notes Line
	6750 6350 6750 7700
Wire Notes Line
	6750 7700 4500 7700
Wire Notes Line
	4500 7700 4500 6350
Text Notes 6150 6450 0    50   ~ 0
RN42_MODULE
Wire Notes Line
	3600 2050 7250 2050
Wire Notes Line
	7250 2050 7250 4400
Wire Notes Line
	7250 4400 3600 4400
Wire Notes Line
	3600 4400 3600 2050
Text Notes 6650 2150 0    50   ~ 0
Nucleo BOARD
Text GLabel 5000 2550 2    50   Input ~ 0
GPIO2_STATUS
Wire Wire Line
	4900 2550 5000 2550
$Comp
L Connector_Generic:Conn_01x03 J18
U 1 1 604B7D7C
P 1250 6600
F 0 "J18" H 1330 6642 50  0000 L CNN
F 1 "GND_reg" H 1330 6551 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 1250 6600 50  0001 C CNN
F 3 "~" H 1250 6600 50  0001 C CNN
	1    1250 6600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 604B809C
P 950 6700
F 0 "#PWR015" H 950 6450 50  0001 C CNN
F 1 "GND" V 955 6572 50  0000 R CNN
F 2 "" H 950 6700 50  0001 C CNN
F 3 "" H 950 6700 50  0001 C CNN
	1    950  6700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR014
U 1 1 604B84EF
P 950 6600
F 0 "#PWR014" H 950 6350 50  0001 C CNN
F 1 "GND" V 955 6472 50  0000 R CNN
F 2 "" H 950 6600 50  0001 C CNN
F 3 "" H 950 6600 50  0001 C CNN
	1    950  6600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR013
U 1 1 604B8647
P 950 6500
F 0 "#PWR013" H 950 6250 50  0001 C CNN
F 1 "GND" V 955 6372 50  0000 R CNN
F 2 "" H 950 6500 50  0001 C CNN
F 3 "" H 950 6500 50  0001 C CNN
	1    950  6500
	0    1    1    0   
$EndComp
Wire Wire Line
	950  6500 1050 6500
Wire Wire Line
	1050 6600 950  6600
Wire Wire Line
	1050 6700 950  6700
Text GLabel 5000 3150 2    50   Input ~ 0
3.3V_NUC
$Comp
L Device:R R1
U 1 1 614C8F4A
P 6250 7050
F 0 "R1" V 6043 7050 50  0000 C CNN
F 1 "1k" V 6134 7050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6180 7050 50  0001 C CNN
F 3 "~" H 6250 7050 50  0001 C CNN
	1    6250 7050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR016
U 1 1 614C9083
P 6500 7050
F 0 "#PWR016" H 6500 6800 50  0001 C CNN
F 1 "GND" V 6505 6922 50  0000 R CNN
F 2 "" H 6500 7050 50  0001 C CNN
F 3 "" H 6500 7050 50  0001 C CNN
	1    6500 7050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6000 7050 6100 7050
Wire Wire Line
	6400 7050 6500 7050
Wire Wire Line
	4900 3150 5000 3150
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J22
U 1 1 614CF25F
P 2650 7150
F 0 "J22" H 2700 7467 50  0000 C CNN
F 1 "nRF24L01" H 2700 7376 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 2650 7150 50  0001 C CNN
F 3 "~" H 2650 7150 50  0001 C CNN
	1    2650 7150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 614D0D10
P 2350 7050
F 0 "#PWR017" H 2350 6800 50  0001 C CNN
F 1 "GND" V 2355 6922 50  0000 R CNN
F 2 "" H 2350 7050 50  0001 C CNN
F 3 "" H 2350 7050 50  0001 C CNN
	1    2350 7050
	0    1    1    0   
$EndComp
Text GLabel 3050 7050 2    50   Input ~ 0
3.3V_NUC
Wire Wire Line
	2350 7050 2450 7050
Wire Wire Line
	2950 7050 3050 7050
Text GLabel 2350 7150 0    50   Input ~ 0
CE_nRF
Text GLabel 2350 7250 0    50   Input ~ 0
SCK
Text GLabel 2350 7350 0    50   Input ~ 0
MISO
Text GLabel 3050 7150 2    50   Input ~ 0
CSN_nRF
Text GLabel 3050 7250 2    50   Input ~ 0
MOSI
Text GLabel 3050 7350 2    50   Input ~ 0
IRQ_nRF
Wire Wire Line
	2350 7150 2450 7150
Wire Wire Line
	2950 7150 3050 7150
Wire Wire Line
	2350 7250 2450 7250
Wire Wire Line
	2950 7250 3050 7250
Wire Wire Line
	2350 7350 2450 7350
Wire Wire Line
	2950 7350 3050 7350
Wire Notes Line
	1850 6700 3600 6700
Wire Notes Line
	3600 6700 3600 7600
Wire Notes Line
	3600 7600 1850 7600
Wire Notes Line
	1850 7600 1850 6700
Text GLabel 6050 3050 0    50   Input ~ 0
MISO
Text GLabel 6050 2950 0    50   Input ~ 0
SCK
Text GLabel 6050 3150 0    50   Input ~ 0
MOSI
Text GLabel 6050 3250 0    50   Input ~ 0
IRQ_nRF
Wire Wire Line
	6050 2950 6150 2950
Wire Wire Line
	6050 3050 6150 3050
Wire Wire Line
	6050 3150 6150 3150
Wire Wire Line
	6050 3450 6150 3450
Wire Wire Line
	6050 3550 6150 3550
$Comp
L power:GND #PWR0101
U 1 1 601405DF
P 1050 800
F 0 "#PWR0101" H 1050 550 50  0001 C CNN
F 1 "GND" V 1055 672 50  0000 R CNN
F 2 "" H 1050 800 50  0001 C CNN
F 3 "" H 1050 800 50  0001 C CNN
	1    1050 800 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J3
U 1 1 63E1FBC8
P 1700 900
F 0 "J3" H 1620 575 50  0000 C CNN
F 1 "COLORS" H 1620 666 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 1700 900 50  0001 C CNN
F 3 "~" H 1700 900 50  0001 C CNN
	1    1700 900 
	-1   0    0    1   
$EndComp
Text GLabel 2000 900  2    50   Input ~ 0
3.3V_NUC
Text GLabel 2000 1000 2    50   Input ~ 0
COLORS
Wire Wire Line
	1900 800  2000 800 
Wire Wire Line
	1900 900  2000 900 
Wire Wire Line
	1900 1000 2000 1000
$Comp
L power:GND #PWR05
U 1 1 63E1FBD7
P 2000 800
F 0 "#PWR05" H 2000 550 50  0001 C CNN
F 1 "GND" V 2005 672 50  0000 R CNN
F 2 "" H 2000 800 50  0001 C CNN
F 3 "" H 2000 800 50  0001 C CNN
	1    2000 800 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J4
U 1 1 63E23793
P 750 1500
F 0 "J4" H 670 1175 50  0000 C CNN
F 1 "MISC" H 670 1266 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 750 1500 50  0001 C CNN
F 3 "~" H 750 1500 50  0001 C CNN
	1    750  1500
	-1   0    0    1   
$EndComp
Text GLabel 1050 1500 2    50   Input ~ 0
3.3V_NUC
Text GLabel 1050 1600 2    50   Input ~ 0
MISC
Wire Wire Line
	950  1400 1050 1400
Wire Wire Line
	950  1500 1050 1500
Wire Wire Line
	950  1600 1050 1600
$Comp
L power:GND #PWR07
U 1 1 63E237A2
P 1050 1400
F 0 "#PWR07" H 1050 1150 50  0001 C CNN
F 1 "GND" V 1055 1272 50  0000 R CNN
F 2 "" H 1050 1400 50  0001 C CNN
F 3 "" H 1050 1400 50  0001 C CNN
	1    1050 1400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4900 3950 5000 3950
$Comp
L Connector_Generic:Conn_01x02 J5
U 1 1 63ED3E07
P 800 4900
F 0 "J5" H 718 4575 50  0000 C CNN
F 1 "POW_+12V" H 718 4666 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-3-2-5.08_1x02_P5.08mm_Horizontal" H 800 4900 50  0001 C CNN
F 3 "~" H 800 4900 50  0001 C CNN
	1    800  4900
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR010
U 1 1 63ED3E0E
P 1100 4900
F 0 "#PWR010" H 1100 4650 50  0001 C CNN
F 1 "GND" V 1105 4772 50  0000 R CNN
F 2 "" H 1100 4900 50  0001 C CNN
F 3 "" H 1100 4900 50  0001 C CNN
	1    1100 4900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1000 4800 1100 4800
Wire Wire Line
	1000 4900 1100 4900
$Comp
L Device:CP C2
U 1 1 63DDA3BE
P 1800 5050
F 0 "C2" H 1918 5096 50  0000 L CNN
F 1 "10uF" H 1918 5005 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 1838 4900 50  0001 C CNN
F 3 "~" H 1800 5050 50  0001 C CNN
	1    1800 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 63DDB51E
P 1800 5300
F 0 "#PWR0102" H 1800 5050 50  0001 C CNN
F 1 "GND" V 1805 5172 50  0000 R CNN
F 2 "" H 1800 5300 50  0001 C CNN
F 3 "" H 1800 5300 50  0001 C CNN
	1    1800 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 4800 1800 4800
Wire Wire Line
	1800 4800 1800 4900
Wire Wire Line
	1800 5300 1800 5250
Wire Wire Line
	6050 3650 6150 3650
$Comp
L Connector_Generic:Conn_01x03 J32
U 1 1 63E4864A
P 2450 5900
F 0 "J32" H 2370 5575 50  0000 C CNN
F 1 "LED Strip 1" H 2370 5666 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 2450 5900 50  0001 C CNN
F 3 "~" H 2450 5900 50  0001 C CNN
	1    2450 5900
	1    0    0    -1  
$EndComp
Text GLabel 2150 5900 0    50   Input ~ 0
5V_POW
$Comp
L power:GND #PWR0106
U 1 1 63E48BF6
P 2150 6000
F 0 "#PWR0106" H 2150 5750 50  0001 C CNN
F 1 "GND" V 2155 5872 50  0000 R CNN
F 2 "" H 2150 6000 50  0001 C CNN
F 3 "" H 2150 6000 50  0001 C CNN
	1    2150 6000
	0    1    1    0   
$EndComp
Text GLabel 2150 5800 0    50   Input ~ 0
LED_1
Text GLabel 6750 3850 2    50   Input ~ 0
LED_1
Wire Wire Line
	2150 5800 2250 5800
Wire Wire Line
	2150 5900 2250 5900
Wire Wire Line
	2150 6000 2250 6000
Text GLabel 4300 3550 0    50   Input ~ 0
USER_BUTTON
Wire Wire Line
	4300 3550 4400 3550
Text Notes 3650 1600 0    50   ~ 0
- Alim +/- 12V\n- ON/OFF\n- LED On/Off ( 3 alims - 12/-5/+5 )\n- switch MODE\n- switch COLOR\n- switch AUTRE\n- 7 bandes + limite 3.3V (Diode)\n- micro\n- jack + volume\n- pot luminosite\n- Lidar TF mini\n
$Comp
L Connector_Generic:Conn_01x02 J8
U 1 1 65D829DD
P 800 5400
F 0 "J8" H 718 5075 50  0000 C CNN
F 1 "POW-12V" H 718 5166 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-3-2-5.08_1x02_P5.08mm_Horizontal" H 800 5400 50  0001 C CNN
F 3 "~" H 800 5400 50  0001 C CNN
	1    800  5400
	-1   0    0    1   
$EndComp
Text GLabel 1100 5300 2    50   Input ~ 0
-12V
$Comp
L power:GND #PWR012
U 1 1 65D83083
P 1100 5400
F 0 "#PWR012" H 1100 5150 50  0001 C CNN
F 1 "GND" V 1105 5272 50  0000 R CNN
F 2 "" H 1100 5400 50  0001 C CNN
F 3 "" H 1100 5400 50  0001 C CNN
	1    1100 5400
	0    -1   -1   0   
$EndComp
Text GLabel 1850 4800 2    50   Input ~ 0
+12V
$Comp
L Device:CP C4
U 1 1 65D87609
P 2450 5050
F 0 "C4" H 2568 5096 50  0000 L CNN
F 1 "10uF" H 2568 5005 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 2488 4900 50  0001 C CNN
F 3 "~" H 2450 5050 50  0001 C CNN
	1    2450 5050
	-1   0    0    1   
$EndComp
Text GLabel 2500 4800 2    50   Input ~ 0
-12V
Wire Wire Line
	2450 5200 2450 5250
Wire Wire Line
	2450 5250 1800 5250
Connection ~ 1800 5250
Wire Wire Line
	1800 5250 1800 5200
Wire Wire Line
	2500 4800 2450 4800
Wire Wire Line
	2450 4800 2450 4900
Wire Wire Line
	1100 5300 1000 5300
Wire Wire Line
	1100 5400 1000 5400
$Comp
L Connector_Generic:Conn_01x02 J12
U 1 1 65E19B62
P 800 5950
F 0 "J12" H 718 5625 50  0000 C CNN
F 1 "POW-5V" H 718 5716 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-3-2-5.08_1x02_P5.08mm_Horizontal" H 800 5950 50  0001 C CNN
F 3 "~" H 800 5950 50  0001 C CNN
	1    800  5950
	-1   0    0    1   
$EndComp
Text GLabel 1100 5850 2    50   Input ~ 0
5V_POW
$Comp
L power:GND #PWR018
U 1 1 65E1A235
P 1100 5950
F 0 "#PWR018" H 1100 5700 50  0001 C CNN
F 1 "GND" V 1105 5822 50  0000 R CNN
F 2 "" H 1100 5950 50  0001 C CNN
F 3 "" H 1100 5950 50  0001 C CNN
	1    1100 5950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1000 5850 1100 5850
Wire Wire Line
	1000 5950 1100 5950
$Comp
L Connector_Generic:Conn_01x06 J13
U 1 1 65E26FDA
P 10700 1050
F 0 "J13" H 10780 1042 50  0000 L CNN
F 1 "Bande1" H 10780 951 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Horizontal" H 10700 1050 50  0001 C CNN
F 3 "~" H 10700 1050 50  0001 C CNN
	1    10700 1050
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J6
U 1 1 65E357C4
P 750 2750
F 0 "J6" H 670 2425 50  0000 C CNN
F 1 "Micro" H 670 2516 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 750 2750 50  0001 C CNN
F 3 "~" H 750 2750 50  0001 C CNN
	1    750  2750
	-1   0    0    1   
$EndComp
Text GLabel 1050 2850 2    50   Input ~ 0
5V_NUC
$Comp
L power:GND #PWR09
U 1 1 65E36015
P 1050 2750
F 0 "#PWR09" H 1050 2500 50  0001 C CNN
F 1 "GND" V 1055 2622 50  0000 R CNN
F 2 "" H 1050 2750 50  0001 C CNN
F 3 "" H 1050 2750 50  0001 C CNN
	1    1050 2750
	0    -1   -1   0   
$EndComp
Text GLabel 1050 2650 2    50   Input ~ 0
Micro_In
Wire Wire Line
	1050 2650 950  2650
Wire Wire Line
	1050 2750 950  2750
Wire Wire Line
	1050 2850 950  2850
$Comp
L Connector_Generic:Conn_01x03 J7
U 1 1 65E54AED
P 750 3700
F 0 "J7" H 670 3375 50  0000 C CNN
F 1 "Jack" H 670 3466 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 750 3700 50  0001 C CNN
F 3 "~" H 750 3700 50  0001 C CNN
	1    750  3700
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J2
U 1 1 65E57539
P 750 2100
F 0 "J2" H 670 1775 50  0000 C CNN
F 1 "POT_LUM" H 670 1866 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 750 2100 50  0001 C CNN
F 3 "~" H 750 2100 50  0001 C CNN
	1    750  2100
	-1   0    0    1   
$EndComp
Text GLabel 1050 2200 2    50   Input ~ 0
3.3V_NUC
Text GLabel 1050 2100 2    50   Input ~ 0
LUM
Wire Wire Line
	950  2000 1050 2000
Wire Wire Line
	950  2100 1050 2100
Wire Wire Line
	950  2200 1050 2200
$Comp
L power:GND #PWR06
U 1 1 65E57544
P 1050 2000
F 0 "#PWR06" H 1050 1750 50  0001 C CNN
F 1 "GND" V 1055 1872 50  0000 R CNN
F 2 "" H 1050 2000 50  0001 C CNN
F 3 "" H 1050 2000 50  0001 C CNN
	1    1050 2000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR011
U 1 1 65E64243
P 1050 3700
F 0 "#PWR011" H 1050 3450 50  0001 C CNN
F 1 "GND" V 1055 3572 50  0000 R CNN
F 2 "" H 1050 3700 50  0001 C CNN
F 3 "" H 1050 3700 50  0001 C CNN
	1    1050 3700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R2
U 1 1 65E646C8
P 1950 3600
F 0 "R2" V 1743 3600 50  0000 C CNN
F 1 "47k" V 1834 3600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1880 3600 50  0001 C CNN
F 3 "~" H 1950 3600 50  0001 C CNN
	1    1950 3600
	0    1    1    0   
$EndComp
$Comp
L Device:CP C1
U 1 1 65E65738
P 1550 3600
F 0 "C1" V 1805 3600 50  0000 C CNN
F 1 "10u" V 1714 3600 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 1588 3450 50  0001 C CNN
F 3 "~" H 1550 3600 50  0001 C CNN
	1    1550 3600
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP C3
U 1 1 65E680BA
P 1550 3800
F 0 "C3" V 1400 3800 50  0000 C CNN
F 1 "10u" V 1300 3800 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 1588 3650 50  0001 C CNN
F 3 "~" H 1550 3800 50  0001 C CNN
	1    1550 3800
	0    -1   -1   0   
$EndComp
Text Notes 700  4300 0    50   ~ 0
Mélangeur Stéréo vers Mono\nFiltre Passe-Haut - 0.3Hz
Wire Wire Line
	950  3600 1400 3600
Wire Wire Line
	1700 3600 1800 3600
Wire Wire Line
	950  3800 1400 3800
Wire Wire Line
	950  3700 1050 3700
$Comp
L Device:R R3
U 1 1 65E7B647
P 1950 3800
F 0 "R3" V 2050 3800 50  0000 C CNN
F 1 "47k" V 2150 3800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1880 3800 50  0001 C CNN
F 3 "~" H 1950 3800 50  0001 C CNN
	1    1950 3800
	0    1    1    0   
$EndComp
Wire Wire Line
	1700 3800 1800 3800
Wire Wire Line
	2100 3600 2150 3600
Wire Wire Line
	2150 3600 2150 3700
Wire Wire Line
	2150 3800 2100 3800
Connection ~ 2150 3700
Wire Wire Line
	2150 3700 2150 3800
Wire Notes Line
	3000 3300 3000 4350
Wire Notes Line
	600  4350 600  3300
Wire Wire Line
	10400 1050 10500 1050
Wire Wire Line
	10400 1150 10500 1150
Wire Wire Line
	10400 1250 10500 1250
Wire Wire Line
	10400 1350 10500 1350
Text GLabel 10400 1250 0    50   Input ~ 0
OUT_B1
Wire Wire Line
	10400 950  10500 950 
Wire Wire Line
	10500 850  10400 850 
$Comp
L Diode:1N4148 D1
U 1 1 65ED4785
P 8350 950
F 0 "D1" V 8304 1030 50  0000 L CNN
F 1 "1N4148" V 8395 1030 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 8350 775 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 8350 950 50  0001 C CNN
	1    8350 950 
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148 D2
U 1 1 65ED478B
P 8350 1350
F 0 "D2" V 8304 1430 50  0000 L CNN
F 1 "1N4148" V 8395 1430 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 8350 1175 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 8350 1350 50  0001 C CNN
	1    8350 1350
	0    1    1    0   
$EndComp
Text GLabel 8300 750  0    50   Input ~ 0
3.3V_NUC
$Comp
L power:GND #PWR021
U 1 1 65ED4793
P 8350 1550
F 0 "#PWR021" H 8350 1300 50  0001 C CNN
F 1 "GND" V 8355 1422 50  0000 R CNN
F 2 "" H 8350 1550 50  0001 C CNN
F 3 "" H 8350 1550 50  0001 C CNN
	1    8350 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 750  8350 750 
Wire Wire Line
	8350 750  8350 800 
Wire Wire Line
	8300 1150 8350 1150
Wire Wire Line
	8350 1150 8350 1100
Wire Wire Line
	8350 1150 8350 1200
Connection ~ 8350 1150
Wire Wire Line
	8350 1550 8350 1500
$Comp
L Connector_Generic:Conn_01x06 J16
U 1 1 65F2ECC4
P 10700 1750
F 0 "J16" H 10780 1742 50  0000 L CNN
F 1 "Bande2" H 10780 1651 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Horizontal" H 10700 1750 50  0001 C CNN
F 3 "~" H 10700 1750 50  0001 C CNN
	1    10700 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 1750 10500 1750
Wire Wire Line
	10400 1850 10500 1850
Wire Wire Line
	10400 1950 10500 1950
Wire Wire Line
	10400 2050 10500 2050
Text GLabel 10400 1950 0    50   Input ~ 0
OUT_B2
Wire Wire Line
	10400 1650 10500 1650
Wire Wire Line
	10500 1550 10400 1550
$Comp
L Connector_Generic:Conn_01x06 J17
U 1 1 65F470D1
P 10700 2450
F 0 "J17" H 10780 2442 50  0000 L CNN
F 1 "Bande3" H 10780 2351 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Horizontal" H 10700 2450 50  0001 C CNN
F 3 "~" H 10700 2450 50  0001 C CNN
	1    10700 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 2450 10500 2450
Wire Wire Line
	10400 2550 10500 2550
Wire Wire Line
	10400 2650 10500 2650
Wire Wire Line
	10400 2750 10500 2750
Text GLabel 10400 2650 0    50   Input ~ 0
OUT_B3
Wire Wire Line
	10400 2350 10500 2350
Wire Wire Line
	10500 2250 10400 2250
$Comp
L Connector_Generic:Conn_01x06 J19
U 1 1 65F57FA0
P 10700 3150
F 0 "J19" H 10780 3142 50  0000 L CNN
F 1 "Bande4" H 10780 3051 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Horizontal" H 10700 3150 50  0001 C CNN
F 3 "~" H 10700 3150 50  0001 C CNN
	1    10700 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 3150 10500 3150
Wire Wire Line
	10400 3250 10500 3250
Wire Wire Line
	10400 3350 10500 3350
Wire Wire Line
	10400 3450 10500 3450
Text GLabel 10400 3350 0    50   Input ~ 0
OUT_B4
Wire Wire Line
	10400 3050 10500 3050
Wire Wire Line
	10500 2950 10400 2950
$Comp
L Connector_Generic:Conn_01x06 J20
U 1 1 65F60F98
P 10700 3850
F 0 "J20" H 10780 3842 50  0000 L CNN
F 1 "Bande4.5" H 10780 3751 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Horizontal" H 10700 3850 50  0001 C CNN
F 3 "~" H 10700 3850 50  0001 C CNN
	1    10700 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 3850 10500 3850
Wire Wire Line
	10400 3950 10500 3950
Wire Wire Line
	10400 4050 10500 4050
Wire Wire Line
	10400 4150 10500 4150
Text GLabel 10400 4050 0    50   Input ~ 0
OUT_B4.5
Wire Wire Line
	10400 3750 10500 3750
Wire Wire Line
	10500 3650 10400 3650
$Comp
L Connector_Generic:Conn_01x06 J21
U 1 1 65F6A79F
P 10700 4550
F 0 "J21" H 10780 4542 50  0000 L CNN
F 1 "Bande5" H 10780 4451 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Horizontal" H 10700 4550 50  0001 C CNN
F 3 "~" H 10700 4550 50  0001 C CNN
	1    10700 4550
	1    0    0    -1  
$EndComp
Text GLabel 10400 4750 0    50   Input ~ 0
OUT_B5
$Comp
L Connector_Generic:Conn_01x06 J23
U 1 1 65F74D84
P 10700 5250
F 0 "J23" H 10780 5242 50  0000 L CNN
F 1 "Bande6" H 10780 5151 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Horizontal" H 10700 5250 50  0001 C CNN
F 3 "~" H 10700 5250 50  0001 C CNN
	1    10700 5250
	1    0    0    -1  
$EndComp
Text GLabel 10400 5050 0    50   Input ~ 0
Micro
Text GLabel 10400 5550 0    50   Input ~ 0
3.3V_NUC
Text GLabel 10400 5150 0    50   Input ~ 0
+12V
$Comp
L power:GND #PWR027
U 1 1 65F74D8D
P 10400 5250
F 0 "#PWR027" H 10400 5000 50  0001 C CNN
F 1 "GND" V 10405 5122 50  0000 R CNN
F 2 "" H 10400 5250 50  0001 C CNN
F 3 "" H 10400 5250 50  0001 C CNN
	1    10400 5250
	0    1    1    0   
$EndComp
Text GLabel 10400 5350 0    50   Input ~ 0
-12V
Wire Wire Line
	10400 5250 10500 5250
Wire Wire Line
	10400 5350 10500 5350
Wire Wire Line
	10400 5450 10500 5450
Wire Wire Line
	10400 5550 10500 5550
Text GLabel 10400 5450 0    50   Input ~ 0
OUT_B6
Wire Wire Line
	10400 5150 10500 5150
Wire Wire Line
	10500 5050 10400 5050
$Comp
L Device:R R4
U 1 1 66014260
P 8150 1150
F 0 "R4" V 7943 1150 50  0000 C CNN
F 1 "1.2k" V 8034 1150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8080 1150 50  0001 C CNN
F 3 "~" H 8150 1150 50  0001 C CNN
	1    8150 1150
	0    1    1    0   
$EndComp
Wire Wire Line
	8000 1150 7950 1150
Text GLabel 8200 1300 3    50   Input ~ 0
NUC_B1
Text GLabel 7950 1150 1    50   Input ~ 0
OUT_B1
Wire Wire Line
	8200 1300 8200 1250
Wire Wire Line
	8200 1250 8300 1250
Wire Wire Line
	8300 1250 8300 1150
Connection ~ 8300 1150
Text GLabel 5000 3750 2    50   Input ~ 0
NUC_B1
Text GLabel 5000 3850 2    50   Input ~ 0
NUC_B2
Text GLabel 5000 3950 2    50   Input ~ 0
NUC_B3
Text GLabel 5000 4050 2    50   Input ~ 0
NUC_B4
Text GLabel 5000 4150 2    50   Input ~ 0
NUC_B4.5
Text GLabel 5000 4250 2    50   Input ~ 0
NUC_B5
Text GLabel 6050 3650 0    50   Input ~ 0
S1_RX
Text GLabel 6050 3450 0    50   Input ~ 0
S1_TX
$Comp
L Connector_Generic:Conn_01x04 J15
U 1 1 66053534
P 2050 2100
F 0 "J15" H 1968 1675 50  0000 C CNN
F 1 "Lidar" H 1968 1766 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 2050 2100 50  0001 C CNN
F 3 "~" H 2050 2100 50  0001 C CNN
	1    2050 2100
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR020
U 1 1 66054675
P 2350 1900
F 0 "#PWR020" H 2350 1650 50  0001 C CNN
F 1 "GND" V 2355 1772 50  0000 R CNN
F 2 "" H 2350 1900 50  0001 C CNN
F 3 "" H 2350 1900 50  0001 C CNN
	1    2350 1900
	0    -1   -1   0   
$EndComp
Text GLabel 2350 2000 2    50   Input ~ 0
5V_NUC
Text GLabel 2350 2200 2    50   Input ~ 0
S1_TX
Text GLabel 2350 2100 2    50   Input ~ 0
S1_RX
Wire Wire Line
	2250 1900 2350 1900
Wire Wire Line
	2250 2000 2350 2000
Wire Wire Line
	2250 2100 2350 2100
Wire Wire Line
	2250 2200 2350 2200
Text GLabel 4150 4250 0    50   Input ~ 0
NUC_B6
Wire Wire Line
	4900 3750 5000 3750
Wire Wire Line
	4900 3850 5000 3850
Wire Wire Line
	4900 4050 5000 4050
Wire Wire Line
	4900 4150 5000 4150
Wire Wire Line
	4900 4250 5000 4250
Wire Wire Line
	4150 4250 4400 4250
Text GLabel 4150 4150 0    50   Input ~ 0
LUM
Wire Wire Line
	4150 4150 4400 4150
Text GLabel 4300 2550 0    50   Input ~ 0
RESET_N
Wire Wire Line
	4400 2550 4300 2550
Text GLabel 6750 2450 2    50   Input ~ 0
MISC
Text GLabel 1850 4700 2    50   Input ~ 0
VIN
Wire Wire Line
	1850 4700 1800 4700
Wire Wire Line
	1800 4700 1800 4800
Connection ~ 1800 4800
$Comp
L Diode:1N4148 D7
U 1 1 66153FB2
P 9300 950
F 0 "D7" V 9254 1030 50  0000 L CNN
F 1 "1N4148" V 9345 1030 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 9300 775 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 9300 950 50  0001 C CNN
	1    9300 950 
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148 D8
U 1 1 66153FB8
P 9300 1350
F 0 "D8" V 9254 1430 50  0000 L CNN
F 1 "1N4148" V 9345 1430 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 9300 1175 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 9300 1350 50  0001 C CNN
	1    9300 1350
	0    1    1    0   
$EndComp
Text GLabel 9250 750  0    50   Input ~ 0
3.3V_NUC
$Comp
L power:GND #PWR031
U 1 1 66153FBF
P 9300 1550
F 0 "#PWR031" H 9300 1300 50  0001 C CNN
F 1 "GND" V 9305 1422 50  0000 R CNN
F 2 "" H 9300 1550 50  0001 C CNN
F 3 "" H 9300 1550 50  0001 C CNN
	1    9300 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 750  9300 750 
Wire Wire Line
	9300 750  9300 800 
Wire Wire Line
	9250 1150 9300 1150
Wire Wire Line
	9300 1150 9300 1100
Wire Wire Line
	9300 1150 9300 1200
Connection ~ 9300 1150
Wire Wire Line
	9300 1550 9300 1500
$Comp
L Device:R R7
U 1 1 66153FCC
P 9100 1150
F 0 "R7" V 8893 1150 50  0000 C CNN
F 1 "1.2k" V 8984 1150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9030 1150 50  0001 C CNN
F 3 "~" H 9100 1150 50  0001 C CNN
	1    9100 1150
	0    1    1    0   
$EndComp
Wire Wire Line
	8950 1150 8900 1150
Text GLabel 9150 1300 3    50   Input ~ 0
NUC_B2
Text GLabel 8900 1150 1    50   Input ~ 0
OUT_B2
Wire Wire Line
	9150 1300 9150 1250
Wire Wire Line
	9150 1250 9250 1250
Wire Wire Line
	9250 1250 9250 1150
Connection ~ 9250 1150
$Comp
L Diode:1N4148 D3
U 1 1 661612C6
P 8350 2250
F 0 "D3" V 8304 2330 50  0000 L CNN
F 1 "1N4148" V 8395 2330 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 8350 2075 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 8350 2250 50  0001 C CNN
	1    8350 2250
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148 D4
U 1 1 661612CC
P 8350 2650
F 0 "D4" V 8304 2730 50  0000 L CNN
F 1 "1N4148" V 8395 2730 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 8350 2475 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 8350 2650 50  0001 C CNN
	1    8350 2650
	0    1    1    0   
$EndComp
Text GLabel 8300 2050 0    50   Input ~ 0
3.3V_NUC
$Comp
L power:GND #PWR029
U 1 1 661612D3
P 8350 2850
F 0 "#PWR029" H 8350 2600 50  0001 C CNN
F 1 "GND" V 8355 2722 50  0000 R CNN
F 2 "" H 8350 2850 50  0001 C CNN
F 3 "" H 8350 2850 50  0001 C CNN
	1    8350 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 2050 8350 2050
Wire Wire Line
	8350 2050 8350 2100
Wire Wire Line
	8300 2450 8350 2450
Wire Wire Line
	8350 2450 8350 2400
Wire Wire Line
	8350 2450 8350 2500
Connection ~ 8350 2450
Wire Wire Line
	8350 2850 8350 2800
$Comp
L Device:R R5
U 1 1 661612E0
P 8150 2450
F 0 "R5" V 7943 2450 50  0000 C CNN
F 1 "1.2k" V 8034 2450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8080 2450 50  0001 C CNN
F 3 "~" H 8150 2450 50  0001 C CNN
	1    8150 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	8000 2450 7950 2450
Text GLabel 8200 2600 3    50   Input ~ 0
NUC_B3
Text GLabel 7950 2450 1    50   Input ~ 0
OUT_B3
Wire Wire Line
	8200 2600 8200 2550
Wire Wire Line
	8200 2550 8300 2550
Wire Wire Line
	8300 2550 8300 2450
Connection ~ 8300 2450
$Comp
L Diode:1N4148 D9
U 1 1 6616E3AD
P 9300 2250
F 0 "D9" V 9254 2330 50  0000 L CNN
F 1 "1N4148" V 9345 2330 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 9300 2075 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 9300 2250 50  0001 C CNN
	1    9300 2250
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148 D10
U 1 1 6616E3B3
P 9300 2650
F 0 "D10" V 9254 2730 50  0000 L CNN
F 1 "1N4148" V 9345 2730 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 9300 2475 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 9300 2650 50  0001 C CNN
	1    9300 2650
	0    1    1    0   
$EndComp
Text GLabel 9250 2050 0    50   Input ~ 0
3.3V_NUC
$Comp
L power:GND #PWR032
U 1 1 6616E3BA
P 9300 2850
F 0 "#PWR032" H 9300 2600 50  0001 C CNN
F 1 "GND" V 9305 2722 50  0000 R CNN
F 2 "" H 9300 2850 50  0001 C CNN
F 3 "" H 9300 2850 50  0001 C CNN
	1    9300 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 2050 9300 2050
Wire Wire Line
	9300 2050 9300 2100
Wire Wire Line
	9250 2450 9300 2450
Wire Wire Line
	9300 2450 9300 2400
Wire Wire Line
	9300 2450 9300 2500
Connection ~ 9300 2450
Wire Wire Line
	9300 2850 9300 2800
$Comp
L Device:R R8
U 1 1 6616E3C7
P 9100 2450
F 0 "R8" V 8893 2450 50  0000 C CNN
F 1 "1.2k" V 8984 2450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9030 2450 50  0001 C CNN
F 3 "~" H 9100 2450 50  0001 C CNN
	1    9100 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	8950 2450 8900 2450
Text GLabel 9150 2600 3    50   Input ~ 0
NUC_B4
Text GLabel 8900 2450 1    50   Input ~ 0
OUT_B4
Wire Wire Line
	9150 2600 9150 2550
Wire Wire Line
	9150 2550 9250 2550
Wire Wire Line
	9250 2550 9250 2450
Connection ~ 9250 2450
$Comp
L Diode:1N4148 D5
U 1 1 66188B31
P 8350 3500
F 0 "D5" V 8304 3580 50  0000 L CNN
F 1 "1N4148" V 8395 3580 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 8350 3325 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 8350 3500 50  0001 C CNN
	1    8350 3500
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148 D6
U 1 1 66188B37
P 8350 3900
F 0 "D6" V 8304 3980 50  0000 L CNN
F 1 "1N4148" V 8395 3980 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 8350 3725 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 8350 3900 50  0001 C CNN
	1    8350 3900
	0    1    1    0   
$EndComp
Text GLabel 8300 3300 0    50   Input ~ 0
3.3V_NUC
$Comp
L power:GND #PWR030
U 1 1 66188B3E
P 8350 4100
F 0 "#PWR030" H 8350 3850 50  0001 C CNN
F 1 "GND" V 8355 3972 50  0000 R CNN
F 2 "" H 8350 4100 50  0001 C CNN
F 3 "" H 8350 4100 50  0001 C CNN
	1    8350 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 3300 8350 3300
Wire Wire Line
	8350 3300 8350 3350
Wire Wire Line
	8300 3700 8350 3700
Wire Wire Line
	8350 3700 8350 3650
Wire Wire Line
	8350 3700 8350 3750
Connection ~ 8350 3700
Wire Wire Line
	8350 4100 8350 4050
$Comp
L Device:R R6
U 1 1 66188B4B
P 8150 3700
F 0 "R6" V 7943 3700 50  0000 C CNN
F 1 "1.2k" V 8034 3700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8080 3700 50  0001 C CNN
F 3 "~" H 8150 3700 50  0001 C CNN
	1    8150 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	8000 3700 7950 3700
Text GLabel 8200 3850 3    50   Input ~ 0
NUC_B4.5
Text GLabel 7950 3700 1    50   Input ~ 0
OUT_B4.5
Wire Wire Line
	8200 3850 8200 3800
Wire Wire Line
	8200 3800 8300 3800
Wire Wire Line
	8300 3800 8300 3700
Connection ~ 8300 3700
$Comp
L Diode:1N4148 D11
U 1 1 661975A0
P 9300 3500
F 0 "D11" V 9254 3580 50  0000 L CNN
F 1 "1N4148" V 9345 3580 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 9300 3325 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 9300 3500 50  0001 C CNN
	1    9300 3500
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148 D12
U 1 1 661975A6
P 9300 3900
F 0 "D12" V 9254 3980 50  0000 L CNN
F 1 "1N4148" V 9345 3980 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 9300 3725 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 9300 3900 50  0001 C CNN
	1    9300 3900
	0    1    1    0   
$EndComp
Text GLabel 9250 3300 0    50   Input ~ 0
3.3V_NUC
$Comp
L power:GND #PWR033
U 1 1 661975AD
P 9300 4100
F 0 "#PWR033" H 9300 3850 50  0001 C CNN
F 1 "GND" V 9305 3972 50  0000 R CNN
F 2 "" H 9300 4100 50  0001 C CNN
F 3 "" H 9300 4100 50  0001 C CNN
	1    9300 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 3300 9300 3300
Wire Wire Line
	9300 3300 9300 3350
Wire Wire Line
	9250 3700 9300 3700
Wire Wire Line
	9300 3700 9300 3650
Wire Wire Line
	9300 3700 9300 3750
Connection ~ 9300 3700
Wire Wire Line
	9300 4100 9300 4050
$Comp
L Device:R R9
U 1 1 661975BA
P 9100 3700
F 0 "R9" V 8893 3700 50  0000 C CNN
F 1 "1.2k" V 8984 3700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9030 3700 50  0001 C CNN
F 3 "~" H 9100 3700 50  0001 C CNN
	1    9100 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	8950 3700 8900 3700
Text GLabel 9150 3850 3    50   Input ~ 0
NUC_B5
Text GLabel 8900 3700 1    50   Input ~ 0
OUT_B5
Wire Wire Line
	9150 3850 9150 3800
Wire Wire Line
	9150 3800 9250 3800
Wire Wire Line
	9250 3800 9250 3700
Connection ~ 9250 3700
$Comp
L Diode:1N4148 D13
U 1 1 661A60E6
P 9300 4850
F 0 "D13" V 9254 4930 50  0000 L CNN
F 1 "1N4148" V 9345 4930 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 9300 4675 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 9300 4850 50  0001 C CNN
	1    9300 4850
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148 D14
U 1 1 661A60EC
P 9300 5250
F 0 "D14" V 9254 5330 50  0000 L CNN
F 1 "1N4148" V 9345 5330 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 9300 5075 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 9300 5250 50  0001 C CNN
	1    9300 5250
	0    1    1    0   
$EndComp
Text GLabel 9250 4650 0    50   Input ~ 0
3.3V_NUC
$Comp
L power:GND #PWR034
U 1 1 661A60F3
P 9300 5450
F 0 "#PWR034" H 9300 5200 50  0001 C CNN
F 1 "GND" V 9305 5322 50  0000 R CNN
F 2 "" H 9300 5450 50  0001 C CNN
F 3 "" H 9300 5450 50  0001 C CNN
	1    9300 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 4650 9300 4650
Wire Wire Line
	9300 4650 9300 4700
Wire Wire Line
	9250 5050 9300 5050
Wire Wire Line
	9300 5050 9300 5000
Wire Wire Line
	9300 5050 9300 5100
Connection ~ 9300 5050
Wire Wire Line
	9300 5450 9300 5400
$Comp
L Device:R R10
U 1 1 661A6100
P 9100 5050
F 0 "R10" V 8893 5050 50  0000 C CNN
F 1 "1.2k" V 8984 5050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9030 5050 50  0001 C CNN
F 3 "~" H 9100 5050 50  0001 C CNN
	1    9100 5050
	0    1    1    0   
$EndComp
Wire Wire Line
	8950 5050 8900 5050
Text GLabel 9150 5200 3    50   Input ~ 0
NUC_B6
Text GLabel 8900 5050 1    50   Input ~ 0
OUT_B6
Wire Wire Line
	9150 5200 9150 5150
Wire Wire Line
	9150 5150 9250 5150
Wire Wire Line
	9250 5150 9250 5050
Connection ~ 9250 5050
$Comp
L Connector_Generic:Conn_01x03 J25
U 1 1 661C6C27
P 2750 3950
F 0 "J25" H 2670 3625 50  0000 C CNN
F 1 "POT_AUDIO_10k" H 2670 3716 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 2750 3950 50  0001 C CNN
F 3 "~" H 2750 3950 50  0001 C CNN
	1    2750 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 4050 2450 4050
Wire Wire Line
	2550 3950 2450 3950
Wire Wire Line
	2550 3850 2450 3850
$Comp
L power:GND #PWR028
U 1 1 661C6C32
P 2450 4050
F 0 "#PWR028" H 2450 3800 50  0001 C CNN
F 1 "GND" V 2455 3922 50  0000 R CNN
F 2 "" H 2450 4050 50  0001 C CNN
F 3 "" H 2450 4050 50  0001 C CNN
	1    2450 4050
	0    1    1    0   
$EndComp
Text GLabel 2450 3950 0    50   Input ~ 0
Jack
Wire Wire Line
	2450 3700 2450 3850
Wire Wire Line
	2150 3700 2450 3700
Wire Notes Line
	600  4350 3000 4350
Wire Notes Line
	600  3300 3000 3300
Wire Notes Line
	600  4500 2900 4500
Wire Notes Line
	2900 4500 2900 6300
Wire Notes Line
	2900 6300 600  6300
Wire Notes Line
	600  6300 600  4500
Text Notes 2350 4600 0    50   ~ 0
Alimentations
Text Notes 3150 6800 0    50   ~ 0
nRF24L01
$Comp
L Connector_Generic:Conn_01x03 J24
U 1 1 6628E535
P 2050 2750
F 0 "J24" H 1970 2425 50  0000 C CNN
F 1 "Jack_Micro" H 1970 2516 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 2050 2750 50  0001 C CNN
F 3 "~" H 2050 2750 50  0001 C CNN
	1    2050 2750
	-1   0    0    1   
$EndComp
Text GLabel 2350 2650 2    50   Input ~ 0
Micro_In
Text GLabel 2350 2750 2    50   Input ~ 0
Micro
Text GLabel 2350 2850 2    50   Input ~ 0
Jack
Wire Wire Line
	2350 2650 2250 2650
Wire Wire Line
	2350 2750 2250 2750
Wire Wire Line
	2350 2850 2250 2850
Wire Notes Line
	7750 550  9750 550 
Wire Notes Line
	9750 550  9750 5850
Wire Notes Line
	9750 5850 7750 5850
Wire Notes Line
	7750 5850 7750 550 
Text Notes 7900 5750 0    50   ~ 0
Nucleo Protection
Text GLabel 10400 4350 0    50   Input ~ 0
Micro
Text GLabel 10400 4850 0    50   Input ~ 0
3.3V_NUC
Text GLabel 10400 4450 0    50   Input ~ 0
+12V
$Comp
L power:GND #PWR0103
U 1 1 6642E9F7
P 10400 4550
F 0 "#PWR0103" H 10400 4300 50  0001 C CNN
F 1 "GND" V 10405 4422 50  0000 R CNN
F 2 "" H 10400 4550 50  0001 C CNN
F 3 "" H 10400 4550 50  0001 C CNN
	1    10400 4550
	0    1    1    0   
$EndComp
Text GLabel 10400 4650 0    50   Input ~ 0
-12V
Text GLabel 10400 3650 0    50   Input ~ 0
Micro
Text GLabel 10400 4150 0    50   Input ~ 0
3.3V_NUC
Text GLabel 10400 3750 0    50   Input ~ 0
+12V
$Comp
L power:GND #PWR0104
U 1 1 6643E6DB
P 10400 3850
F 0 "#PWR0104" H 10400 3600 50  0001 C CNN
F 1 "GND" V 10405 3722 50  0000 R CNN
F 2 "" H 10400 3850 50  0001 C CNN
F 3 "" H 10400 3850 50  0001 C CNN
	1    10400 3850
	0    1    1    0   
$EndComp
Text GLabel 10400 3950 0    50   Input ~ 0
-12V
Wire Wire Line
	10400 4850 10500 4850
Wire Wire Line
	10400 4750 10500 4750
Wire Wire Line
	10400 4650 10500 4650
Wire Wire Line
	10400 4550 10500 4550
Wire Wire Line
	10400 4450 10500 4450
Wire Wire Line
	10400 4350 10500 4350
Text GLabel 10400 2950 0    50   Input ~ 0
Micro
Text GLabel 10400 3450 0    50   Input ~ 0
3.3V_NUC
Text GLabel 10400 3050 0    50   Input ~ 0
+12V
Text GLabel 10400 3250 0    50   Input ~ 0
-12V
$Comp
L power:GND #PWR0105
U 1 1 664D17E4
P 10400 3150
F 0 "#PWR0105" H 10400 2900 50  0001 C CNN
F 1 "GND" V 10405 3022 50  0000 R CNN
F 2 "" H 10400 3150 50  0001 C CNN
F 3 "" H 10400 3150 50  0001 C CNN
	1    10400 3150
	0    1    1    0   
$EndComp
Text GLabel 10400 2250 0    50   Input ~ 0
Micro
Text GLabel 10400 2750 0    50   Input ~ 0
3.3V_NUC
Text GLabel 10400 2350 0    50   Input ~ 0
+12V
Text GLabel 10400 2550 0    50   Input ~ 0
-12V
$Comp
L power:GND #PWR0107
U 1 1 664D1F7B
P 10400 2450
F 0 "#PWR0107" H 10400 2200 50  0001 C CNN
F 1 "GND" V 10405 2322 50  0000 R CNN
F 2 "" H 10400 2450 50  0001 C CNN
F 3 "" H 10400 2450 50  0001 C CNN
	1    10400 2450
	0    1    1    0   
$EndComp
Text GLabel 10400 1550 0    50   Input ~ 0
Micro
Text GLabel 10400 2050 0    50   Input ~ 0
3.3V_NUC
Text GLabel 10400 1650 0    50   Input ~ 0
+12V
Text GLabel 10400 1850 0    50   Input ~ 0
-12V
$Comp
L power:GND #PWR0108
U 1 1 664E265C
P 10400 1750
F 0 "#PWR0108" H 10400 1500 50  0001 C CNN
F 1 "GND" V 10405 1622 50  0000 R CNN
F 2 "" H 10400 1750 50  0001 C CNN
F 3 "" H 10400 1750 50  0001 C CNN
	1    10400 1750
	0    1    1    0   
$EndComp
Text GLabel 10400 850  0    50   Input ~ 0
Micro
Text GLabel 10400 1350 0    50   Input ~ 0
3.3V_NUC
Text GLabel 10400 950  0    50   Input ~ 0
+12V
Text GLabel 10400 1150 0    50   Input ~ 0
-12V
$Comp
L power:GND #PWR0109
U 1 1 664F2D1B
P 10400 1050
F 0 "#PWR0109" H 10400 800 50  0001 C CNN
F 1 "GND" V 10405 922 50  0000 R CNN
F 2 "" H 10400 1050 50  0001 C CNN
F 3 "" H 10400 1050 50  0001 C CNN
	1    10400 1050
	0    1    1    0   
$EndComp
Wire Wire Line
	6050 3250 6150 3250
Text GLabel 6050 2450 0    50   Input ~ 0
CSN_nRF
Wire Wire Line
	6050 2450 6150 2450
Text GLabel 6050 2550 0    50   Input ~ 0
CE_nRF
Wire Wire Line
	6050 2550 6150 2550
$Comp
L Device:CP C5
U 1 1 665D4E03
P 2700 5650
F 0 "C5" H 2818 5696 50  0000 L CNN
F 1 "10uF" H 2818 5605 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 2738 5500 50  0001 C CNN
F 3 "~" H 2700 5650 50  0001 C CNN
	1    2700 5650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 665D5FB8
P 2700 5800
F 0 "#PWR019" H 2700 5550 50  0001 C CNN
F 1 "GND" V 2705 5672 50  0000 R CNN
F 2 "" H 2700 5800 50  0001 C CNN
F 3 "" H 2700 5800 50  0001 C CNN
	1    2700 5800
	1    0    0    -1  
$EndComp
Text GLabel 2600 5450 0    50   Input ~ 0
5V_POW
Wire Wire Line
	2600 5450 2700 5450
Wire Wire Line
	2700 5450 2700 5500
Text GLabel 1100 4800 2    50   Input ~ 0
+12V
Wire Wire Line
	6650 3850 6750 3850
Text GLabel 6750 2950 2    50   Input ~ 0
COLORS
Text GLabel 6950 3050 2    50   Input ~ 0
MODE
$EndSCHEMATC
