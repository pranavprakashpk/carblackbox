subtitle "Microchip MPLAB XC8 C Compiler v2.41 (Free license) build 20230208172133 Og9 "

pagewidth 120

	opt flic

	processor	18F4580
include "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\18f4580.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
clrc   macro
	bcf	status,0
endm
setc   macro
	bsf	status,0
endm
clrz   macro
	bcf	status,2
endm
setz   macro
	bsf	status,2
endm
skipnz macro
	btfsc	status,2
endm
skipz  macro
	btfss	status,2
endm
skipnc macro
	btfsc	status,0
endm
skipc  macro
	btfss	status,0
endm
pushw macro
	movwf postinc1
endm
pushf macro arg1
	movff arg1, postinc1
endm
popw macro
	movf postdec1,f
	movf indf1,w
endm
popf macro arg1
	movf postdec1,f
	movff indf1,arg1
endm
popfc macro arg1
	movff plusw1,arg1
	decfsz fsr1,f
endm
	global	__ramtop
	global	__accesstop
# 54 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 166 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 267 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 379 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 491 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 603 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 704 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 816 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 928 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1040 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1141 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1253 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1365 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1477 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1578 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1690 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1802 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1914 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2015 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2127 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2239 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2351 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2452 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2564 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2676 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2788 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2889 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3001 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3113 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3225 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3326 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3438 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3550 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3662 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3763 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3875 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3987 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4099 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4200 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4312 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4424 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4486 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4548 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4624 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4694 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4764 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4834 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4904 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4974 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5044 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5114 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5184 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5246 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5308 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5370 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5432 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5483 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5559 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5613 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5884 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5996 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6107 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6219 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6331 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6461 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6523 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6585 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6647 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6709 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6771 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6833 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6895 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6957 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7051 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7134 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7405 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7517 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7628 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7740 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7852 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7982 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8044 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8106 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8168 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8230 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8292 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8354 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8416 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8478 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8572 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8655 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8926 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9038 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9158 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9270 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9382 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9512 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9574 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9636 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9698 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9760 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9822 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9884 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9946 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10008 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10102 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10185 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10456 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10568 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10688 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10800 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10912 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11042 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11104 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11166 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11228 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11290 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11352 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11414 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11476 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11538 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11632 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11715 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11986 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12098 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12218 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12330 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12442 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12572 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12634 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12696 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12758 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12820 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12882 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12944 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13006 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13077 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13171 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13254 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13525 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13637 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13766 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13878 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13990 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14114 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14185 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14247 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14318 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14380 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14442 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14504 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14566 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14628 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14722 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14805 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14917 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15018 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15130 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15242 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15354 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15455 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15567 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15679 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15791 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15892 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16004 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16116 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16228 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16329 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16441 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16553 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16665 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16766 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16878 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16990 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17102 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17203 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17315 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17427 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17539 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17631 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17743 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17855 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17967 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18059 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18171 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18283 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18394 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18506 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18598 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18710 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18822 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18900 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18962 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19024 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19086 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19148 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19210 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19272 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19334 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19396 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19490 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19573 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19684 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19796 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19888 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20000 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20112 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20190 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20252 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20314 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20376 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20438 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20500 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20562 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20624 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20686 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20780 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20863 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20965 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21077 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21169 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21281 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21393 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21471 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21533 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21595 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21657 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21719 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21781 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21843 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21905 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21967 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22061 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22144 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22304 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22416 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22518 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22630 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22742 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22857 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22919 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22981 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23043 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23105 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23167 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23229 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23291 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23353 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23447 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23530 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23723 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23835 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23937 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24049 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24161 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24276 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24338 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24400 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24462 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24524 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24586 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24648 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24710 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24772 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24881 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24985 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25047 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25118 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25163 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25190 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25312 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25374 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25436 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25507 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25716 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25890 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26060 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26240 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26339 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26451 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26563 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26675 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26787 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26839 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26844 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27061 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27066 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27283 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27288 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27505 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27510 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27727 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27732 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27879 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27951 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28028 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28105 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28191 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28257 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28323 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28389 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28496 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28595 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28694 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28760 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28767 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28774 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28781 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28786 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28991 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28996 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29247 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29252 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29259 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29264 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29271 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29276 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29283 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29290 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29417 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29424 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29431 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29438 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29528 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29613 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29695 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29765 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29770 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29931 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30013 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30020 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30027 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30034 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30098 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30105 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30112 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30119 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30190 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30275 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30394 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30401 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30408 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30415 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30477 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30547 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30795 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30802 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30809 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30880 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30885 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30990 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30997 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31109 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31116 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31123 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31130 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31263 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31291 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31296 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31561 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31638 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31714 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31721 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31728 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31735 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31806 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31813 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31820 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31827 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31834 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31841 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31848 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31855 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31862 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31869 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31876 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31883 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31890 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31897 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31904 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31911 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31918 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31925 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31932 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31939 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31946 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31953 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31960 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31967 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31974 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31981 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31988 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32080 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32157 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32274 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32281 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32288 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32295 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32304 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32311 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32318 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32325 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32334 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32341 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32348 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32355 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32362 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32369 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32443 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32450 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32457 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32464 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
# 54 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 166 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 267 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 379 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 491 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 603 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 704 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 816 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 928 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1040 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1141 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1253 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1365 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1477 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1578 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1690 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1802 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1914 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2015 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2127 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2239 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2351 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2452 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2564 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2676 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2788 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2889 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3001 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3113 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3225 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3326 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3438 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3550 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3662 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3763 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3875 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3987 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4099 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4200 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4312 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4424 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4486 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4548 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4624 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4694 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4764 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4834 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4904 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4974 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5044 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5114 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5184 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5246 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5308 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5370 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5432 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5483 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5559 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5613 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5884 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5996 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6107 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6219 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6331 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6461 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6523 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6585 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6647 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6709 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6771 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6833 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6895 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6957 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7051 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7134 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7405 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7517 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7628 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7740 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7852 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7982 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8044 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8106 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8168 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8230 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8292 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8354 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8416 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8478 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8572 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8655 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8926 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9038 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9158 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9270 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9382 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9512 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9574 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9636 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9698 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9760 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9822 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9884 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9946 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10008 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10102 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10185 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10456 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10568 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10688 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10800 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10912 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11042 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11104 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11166 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11228 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11290 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11352 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11414 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11476 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11538 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11632 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11715 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11986 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12098 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12218 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12330 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12442 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12572 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12634 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12696 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12758 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12820 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12882 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12944 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13006 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13077 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13171 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13254 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13525 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13637 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13766 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13878 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13990 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14114 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14185 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14247 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14318 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14380 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14442 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14504 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14566 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14628 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14722 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14805 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14917 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15018 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15130 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15242 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15354 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15455 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15567 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15679 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15791 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15892 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16004 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16116 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16228 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16329 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16441 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16553 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16665 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16766 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16878 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16990 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17102 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17203 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17315 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17427 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17539 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17631 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17743 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17855 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17967 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18059 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18171 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18283 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18394 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18506 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18598 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18710 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18822 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18900 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18962 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19024 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19086 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19148 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19210 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19272 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19334 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19396 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19490 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19573 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19684 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19796 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19888 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20000 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20112 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20190 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20252 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20314 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20376 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20438 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20500 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20562 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20624 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20686 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20780 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20863 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20965 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21077 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21169 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21281 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21393 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21471 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21533 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21595 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21657 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21719 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21781 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21843 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21905 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21967 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22061 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22144 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22304 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22416 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22518 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22630 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22742 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22857 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22919 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22981 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23043 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23105 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23167 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23229 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23291 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23353 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23447 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23530 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23723 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23835 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23937 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24049 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24161 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24276 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24338 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24400 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24462 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24524 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24586 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24648 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24710 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24772 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24881 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24985 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25047 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25118 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25163 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25190 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25312 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25374 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25436 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25507 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25716 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25890 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26060 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26240 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26339 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26451 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26563 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26675 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26787 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26839 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26844 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27061 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27066 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27283 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27288 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27505 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27510 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27727 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27732 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27879 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27951 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28028 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28105 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28191 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28257 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28323 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28389 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28496 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28595 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28694 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28760 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28767 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28774 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28781 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28786 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28991 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28996 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29247 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29252 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29259 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29264 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29271 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29276 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29283 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29290 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29417 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29424 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29431 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29438 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29528 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29613 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29695 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29765 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29770 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29931 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30013 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30020 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30027 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30034 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30098 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30105 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30112 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30119 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30190 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30275 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30394 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30401 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30408 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30415 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30477 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30547 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30795 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30802 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30809 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30880 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30885 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30990 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30997 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31109 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31116 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31123 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31130 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31263 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31291 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31296 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31561 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31638 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31714 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31721 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31728 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31735 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31806 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31813 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31820 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31827 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31834 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31841 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31848 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31855 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31862 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31869 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31876 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31883 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31890 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31897 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31904 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31911 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31918 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31925 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31932 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31939 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31946 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31953 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31960 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31967 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31974 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31981 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31988 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32080 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32157 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32274 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32281 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32288 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32295 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32304 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32311 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32318 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32325 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32334 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32341 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32348 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32355 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32362 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32369 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32443 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32450 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32457 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32464 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
# 54 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 166 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 267 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 379 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 491 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 603 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 704 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 816 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 928 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1040 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1141 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1253 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1365 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1477 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1578 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1690 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1802 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1914 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2015 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2127 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2239 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2351 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2452 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2564 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2676 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2788 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2889 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3001 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3113 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3225 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3326 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3438 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3550 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3662 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3763 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3875 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3987 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4099 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4200 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4312 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4424 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4486 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4548 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4624 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4694 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4764 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4834 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4904 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4974 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5044 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5114 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5184 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5246 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5308 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5370 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5432 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5483 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5559 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5613 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5884 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5996 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6107 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6219 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6331 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6461 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6523 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6585 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6647 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6709 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6771 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6833 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6895 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6957 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7051 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7134 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7405 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7517 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7628 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7740 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7852 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7982 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8044 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8106 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8168 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8230 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8292 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8354 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8416 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8478 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8572 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8655 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8926 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9038 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9158 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9270 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9382 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9512 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9574 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9636 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9698 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9760 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9822 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9884 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9946 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10008 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10102 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10185 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10456 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10568 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10688 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10800 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10912 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11042 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11104 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11166 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11228 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11290 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11352 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11414 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11476 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11538 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11632 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11715 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11986 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12098 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12218 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12330 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12442 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12572 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12634 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12696 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12758 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12820 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12882 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12944 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13006 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13077 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13171 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13254 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13525 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13637 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13766 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13878 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13990 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14114 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14185 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14247 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14318 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14380 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14442 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14504 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14566 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14628 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14722 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14805 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14917 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15018 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15130 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15242 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15354 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15455 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15567 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15679 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15791 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15892 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16004 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16116 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16228 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16329 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16441 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16553 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16665 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16766 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16878 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16990 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17102 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17203 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17315 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17427 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17539 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17631 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17743 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17855 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17967 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18059 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18171 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18283 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18394 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18506 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18598 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18710 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18822 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18900 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18962 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19024 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19086 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19148 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19210 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19272 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19334 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19396 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19490 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19573 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19684 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19796 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19888 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20000 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20112 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20190 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20252 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20314 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20376 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20438 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20500 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20562 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20624 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20686 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20780 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20863 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20965 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21077 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21169 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21281 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21393 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21471 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21533 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21595 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21657 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21719 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21781 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21843 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21905 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21967 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22061 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22144 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22304 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22416 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22518 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22630 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22742 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22857 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22919 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22981 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23043 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23105 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23167 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23229 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23291 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23353 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23447 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23530 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23723 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23835 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23937 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24049 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24161 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24276 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24338 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24400 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24462 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24524 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24586 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24648 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24710 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24772 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24881 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24985 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25047 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25118 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25163 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25190 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25312 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25374 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25436 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25507 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25716 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25890 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26060 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26240 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26339 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26451 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26563 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26675 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26787 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26839 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26844 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27061 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27066 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27283 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27288 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27505 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27510 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27727 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27732 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27879 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27951 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28028 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28105 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28191 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28257 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28323 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28389 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28496 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28595 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28694 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28760 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28767 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28774 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28781 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28786 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28991 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28996 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29247 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29252 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29259 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29264 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29271 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29276 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29283 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29290 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29417 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29424 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29431 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29438 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29528 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29613 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29695 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29765 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29770 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29931 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30013 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30020 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30027 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30034 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30098 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30105 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30112 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30119 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30190 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30275 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30394 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30401 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30408 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30415 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30477 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30547 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30795 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30802 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30809 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30880 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30885 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30990 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30997 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31109 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31116 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31123 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31130 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31263 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31291 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31296 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31561 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31638 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31714 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31721 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31728 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31735 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31806 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31813 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31820 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31827 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31834 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31841 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31848 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31855 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31862 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31869 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31876 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31883 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31890 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31897 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31904 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31911 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31918 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31925 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31932 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31939 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31946 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31953 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31960 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31967 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31974 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31981 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31988 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32080 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32157 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32274 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32281 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32288 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32295 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32304 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32311 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32318 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32325 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32334 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32341 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32348 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32355 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32362 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32369 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32443 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32450 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32457 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32464 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
# 54 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 166 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 267 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 379 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 491 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 603 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 704 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 816 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 928 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1040 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1141 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1253 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1365 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1477 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1578 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1690 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1802 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1914 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2015 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2127 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2239 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2351 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2452 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2564 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2676 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2788 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2889 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3001 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3113 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3225 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3326 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3438 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3550 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3662 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3763 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3875 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3987 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4099 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4200 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4312 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4424 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4486 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4548 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4624 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4694 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4764 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4834 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4904 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4974 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5044 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5114 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5184 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5246 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5308 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5370 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5432 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5483 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5559 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5613 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5884 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5996 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6107 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6219 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6331 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6461 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6523 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6585 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6647 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6709 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6771 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6833 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6895 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6957 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7051 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7134 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7405 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7517 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7628 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7740 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7852 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7982 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8044 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8106 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8168 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8230 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8292 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8354 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8416 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8478 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8572 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8655 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8926 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9038 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9158 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9270 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9382 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9512 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9574 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9636 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9698 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9760 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9822 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9884 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9946 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10008 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10102 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10185 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10456 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10568 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10688 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10800 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10912 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11042 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11104 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11166 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11228 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11290 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11352 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11414 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11476 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11538 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11632 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11715 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11986 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12098 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12218 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12330 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12442 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12572 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12634 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12696 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12758 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12820 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12882 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12944 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13006 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13077 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13171 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13254 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13525 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13637 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13766 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13878 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13990 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14114 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14185 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14247 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14318 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14380 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14442 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14504 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14566 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14628 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14722 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14805 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14917 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15018 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15130 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15242 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15354 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15455 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15567 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15679 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15791 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15892 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16004 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16116 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16228 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16329 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16441 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16553 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16665 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16766 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16878 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16990 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17102 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17203 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17315 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17427 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17539 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17631 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17743 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17855 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17967 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18059 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18171 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18283 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18394 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18506 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18598 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18710 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18822 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18900 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18962 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19024 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19086 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19148 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19210 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19272 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19334 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19396 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19490 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19573 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19684 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19796 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19888 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20000 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20112 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20190 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20252 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20314 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20376 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20438 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20500 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20562 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20624 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20686 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20780 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20863 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20965 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21077 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21169 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21281 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21393 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21471 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21533 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21595 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21657 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21719 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21781 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21843 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21905 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21967 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22061 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22144 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22304 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22416 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22518 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22630 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22742 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22857 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22919 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22981 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23043 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23105 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23167 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23229 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23291 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23353 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23447 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23530 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23723 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23835 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23937 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24049 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24161 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24276 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24338 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24400 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24462 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24524 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24586 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24648 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24710 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24772 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24881 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24985 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25047 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25118 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25163 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25190 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25312 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25374 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25436 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25507 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25716 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25890 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26060 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26240 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26339 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26451 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26563 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26675 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26787 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26839 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26844 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27061 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27066 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27283 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27288 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27505 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27510 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27727 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27732 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27879 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27951 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28028 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28105 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28191 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28257 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28323 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28389 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28496 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28595 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28694 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28760 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28767 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28774 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28781 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28786 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28991 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28996 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29247 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29252 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29259 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29264 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29271 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29276 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29283 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29290 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29417 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29424 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29431 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29438 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29528 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29613 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29695 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29765 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29770 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29931 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30013 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30020 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30027 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30034 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30098 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30105 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30112 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30119 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30190 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30275 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30394 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30401 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30408 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30415 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30477 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30547 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30795 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30802 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30809 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30880 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30885 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30990 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30997 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31109 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31116 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31123 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31130 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31263 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31291 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31296 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31561 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31638 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31714 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31721 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31728 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31735 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31806 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31813 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31820 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31827 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31834 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31841 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31848 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31855 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31862 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31869 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31876 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31883 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31890 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31897 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31904 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31911 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31918 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31925 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31932 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31939 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31946 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31953 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31960 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31967 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31974 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31981 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31988 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32080 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32157 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32274 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32281 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32288 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32295 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32304 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32311 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32318 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32325 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32334 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32341 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32348 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32355 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32362 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32369 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32443 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32450 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32457 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32464 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
# 54 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 166 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 267 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 379 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 491 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 603 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 704 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 816 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 928 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1040 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1141 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1253 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1365 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1477 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1578 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1690 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1802 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1914 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2015 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2127 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2239 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2351 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2452 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2564 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2676 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2788 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2889 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3001 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3113 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3225 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3326 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3438 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3550 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3662 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3763 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3875 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3987 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4099 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4200 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4312 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4424 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4486 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4548 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4624 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4694 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4764 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4834 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4904 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4974 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5044 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5114 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5184 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5246 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5308 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5370 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5432 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5483 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5559 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5613 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5884 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5996 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6107 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6219 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6331 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6461 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6523 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6585 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6647 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6709 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6771 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6833 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6895 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6957 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7051 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7134 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7405 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7517 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7628 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7740 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7852 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7982 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8044 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8106 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8168 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8230 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8292 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8354 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8416 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8478 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8572 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8655 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8926 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9038 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9158 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9270 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9382 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9512 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9574 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9636 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9698 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9760 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9822 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9884 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9946 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10008 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10102 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10185 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10456 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10568 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10688 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10800 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10912 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11042 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11104 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11166 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11228 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11290 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11352 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11414 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11476 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11538 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11632 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11715 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11986 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12098 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12218 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12330 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12442 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12572 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12634 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12696 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12758 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12820 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12882 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12944 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13006 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13077 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13171 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13254 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13525 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13637 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13766 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13878 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13990 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14114 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14185 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14247 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14318 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14380 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14442 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14504 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14566 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14628 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14722 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14805 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14917 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15018 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15130 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15242 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15354 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15455 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15567 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15679 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15791 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15892 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16004 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16116 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16228 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16329 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16441 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16553 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16665 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16766 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16878 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16990 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17102 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17203 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17315 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17427 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17539 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17631 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17743 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17855 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17967 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18059 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18171 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18283 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18394 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18506 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18598 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18710 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18822 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18900 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18962 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19024 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19086 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19148 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19210 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19272 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19334 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19396 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19490 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19573 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19684 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19796 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19888 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20000 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20112 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20190 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20252 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20314 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20376 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20438 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20500 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20562 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20624 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20686 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20780 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20863 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20965 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21077 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21169 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21281 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21393 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21471 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21533 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21595 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21657 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21719 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21781 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21843 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21905 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21967 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22061 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22144 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22304 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22416 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22518 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22630 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22742 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22857 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22919 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22981 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23043 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23105 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23167 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23229 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23291 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23353 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23447 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23530 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23723 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23835 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23937 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24049 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24161 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24276 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24338 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24400 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24462 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24524 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24586 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24648 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24710 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24772 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24881 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24985 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25047 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25118 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25163 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25190 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25312 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25374 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25436 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25507 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25716 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25890 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26060 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26240 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26339 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26451 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26563 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26675 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26787 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26839 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26844 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27061 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27066 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27283 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27288 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27505 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27510 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27727 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27732 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27879 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27951 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28028 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28105 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28191 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28257 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28323 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28389 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28496 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28595 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28694 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28760 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28767 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28774 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28781 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28786 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28991 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28996 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29247 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29252 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29259 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29264 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29271 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29276 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29283 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29290 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29417 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29424 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29431 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29438 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29528 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29613 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29695 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29765 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29770 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29931 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30013 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30020 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30027 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30034 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30098 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30105 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30112 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30119 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30190 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30275 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30394 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30401 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30408 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30415 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30477 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30547 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30795 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30802 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30809 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30880 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30885 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30990 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30997 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31109 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31116 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31123 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31130 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31263 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31291 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31296 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31561 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31638 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31714 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31721 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31728 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31735 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31806 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31813 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31820 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31827 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31834 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31841 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31848 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31855 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31862 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31869 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31876 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31883 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31890 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31897 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31904 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31911 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31918 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31925 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31932 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31939 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31946 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31953 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31960 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31967 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31974 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31981 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31988 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32080 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32157 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32274 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32281 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32288 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32295 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32304 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32311 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32318 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32325 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32334 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32341 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32348 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32355 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32362 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32369 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32443 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32450 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32457 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32464 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
# 54 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 166 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 267 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 379 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 491 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 603 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 704 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 816 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 928 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1040 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1141 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1253 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1365 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1477 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1578 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1690 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1802 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1914 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2015 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2127 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2239 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2351 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2452 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2564 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2676 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2788 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2889 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3001 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3113 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3225 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3326 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3438 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3550 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3662 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3763 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3875 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3987 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4099 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4200 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4312 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4424 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4486 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4548 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4624 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4694 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4764 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4834 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4904 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4974 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5044 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5114 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5184 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5246 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5308 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5370 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5432 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5483 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5559 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5613 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5884 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5996 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6107 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6219 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6331 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6461 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6523 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6585 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6647 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6709 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6771 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6833 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6895 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6957 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7051 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7134 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7405 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7517 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7628 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7740 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7852 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7982 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8044 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8106 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8168 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8230 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8292 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8354 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8416 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8478 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8572 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8655 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8926 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9038 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9158 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9270 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9382 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9512 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9574 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9636 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9698 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9760 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9822 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9884 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9946 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10008 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10102 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10185 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10456 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10568 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10688 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10800 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10912 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11042 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11104 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11166 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11228 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11290 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11352 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11414 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11476 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11538 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11632 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11715 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11986 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12098 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12218 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12330 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12442 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12572 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12634 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12696 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12758 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12820 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12882 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12944 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13006 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13077 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13171 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13254 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13525 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13637 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13766 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13878 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13990 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14114 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14185 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14247 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14318 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14380 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14442 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14504 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14566 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14628 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14722 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14805 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14917 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15018 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15130 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15242 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15354 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15455 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15567 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15679 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15791 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15892 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16004 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16116 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16228 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16329 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16441 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16553 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16665 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16766 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16878 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16990 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17102 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17203 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17315 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17427 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17539 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17631 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17743 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17855 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17967 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18059 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18171 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18283 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18394 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18506 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18598 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18710 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18822 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18900 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18962 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19024 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19086 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19148 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19210 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19272 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19334 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19396 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19490 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19573 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19684 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19796 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19888 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20000 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20112 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20190 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20252 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20314 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20376 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20438 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20500 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20562 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20624 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20686 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20780 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20863 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20965 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21077 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21169 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21281 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21393 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21471 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21533 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21595 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21657 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21719 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21781 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21843 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21905 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21967 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22061 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22144 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22304 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22416 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22518 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22630 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22742 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22857 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22919 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22981 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23043 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23105 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23167 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23229 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23291 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23353 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23447 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23530 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23723 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23835 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23937 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24049 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24161 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24276 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24338 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24400 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24462 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24524 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24586 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24648 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24710 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24772 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24881 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24985 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25047 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25118 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25163 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25190 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25312 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25374 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25436 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25507 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25716 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25890 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26060 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26240 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26339 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26451 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26563 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26675 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26787 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26839 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26844 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27061 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27066 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27283 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27288 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27505 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27510 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27727 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27732 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27879 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27951 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28028 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28105 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28191 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28257 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28323 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28389 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28496 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28595 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28694 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28760 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28767 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28774 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28781 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28786 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28991 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28996 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29247 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29252 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29259 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29264 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29271 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29276 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29283 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29290 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29417 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29424 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29431 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29438 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29528 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29613 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29695 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29765 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29770 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29931 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30013 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30020 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30027 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30034 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30098 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30105 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30112 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30119 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30190 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30275 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30394 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30401 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30408 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30415 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30477 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30547 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30795 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30802 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30809 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30880 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30885 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30990 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30997 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31109 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31116 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31123 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31130 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31263 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31291 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31296 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31561 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31638 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31714 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31721 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31728 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31735 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31806 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31813 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31820 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31827 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31834 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31841 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31848 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31855 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31862 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31869 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31876 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31883 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31890 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31897 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31904 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31911 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31918 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31925 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31932 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31939 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31946 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31953 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31960 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31967 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31974 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31981 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31988 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32080 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32157 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32274 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32281 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32288 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32295 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32304 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32311 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32318 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32325 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32334 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32341 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32348 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32355 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32362 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32369 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32443 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32450 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32457 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32464 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
# 54 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 166 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 267 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 379 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 491 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 603 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 704 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 816 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 928 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1040 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1141 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1253 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1365 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1477 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1578 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1690 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1802 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1914 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2015 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2127 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2239 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2351 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2452 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2564 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2676 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2788 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2889 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3001 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3113 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3225 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3326 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3438 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3550 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3662 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3763 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3875 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3987 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4099 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4200 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4312 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4424 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4486 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4548 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4624 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4694 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4764 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4834 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4904 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4974 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5044 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5114 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5184 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5246 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5308 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5370 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5432 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5483 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5559 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5613 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5884 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5996 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6107 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6219 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6331 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6461 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6523 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6585 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6647 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6709 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6771 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6833 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6895 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6957 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7051 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7134 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7405 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7517 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7628 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7740 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7852 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7982 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8044 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8106 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8168 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8230 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8292 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8354 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8416 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8478 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8572 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8655 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8926 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9038 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9158 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9270 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9382 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9512 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9574 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9636 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9698 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9760 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9822 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9884 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9946 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10008 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10102 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10185 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10456 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10568 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10688 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10800 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10912 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11042 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11104 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11166 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11228 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11290 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11352 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11414 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11476 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11538 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11632 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11715 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11986 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12098 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12218 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12330 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12442 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12572 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12634 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12696 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12758 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12820 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12882 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12944 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13006 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13077 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13171 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13254 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13525 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13637 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13766 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13878 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13990 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14114 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14185 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14247 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14318 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14380 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14442 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14504 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14566 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14628 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14722 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14805 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14917 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15018 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15130 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15242 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15354 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15455 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15567 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15679 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15791 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15892 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16004 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16116 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16228 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16329 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16441 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16553 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16665 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16766 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16878 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16990 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17102 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17203 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17315 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17427 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17539 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17631 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17743 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17855 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17967 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18059 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18171 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18283 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18394 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18506 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18598 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18710 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18822 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18900 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18962 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19024 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19086 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19148 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19210 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19272 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19334 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19396 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19490 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19573 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19684 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19796 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19888 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20000 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20112 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20190 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20252 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20314 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20376 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20438 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20500 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20562 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20624 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20686 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20780 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20863 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20965 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21077 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21169 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21281 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21393 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21471 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21533 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21595 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21657 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21719 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21781 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21843 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21905 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21967 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22061 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22144 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22304 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22416 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22518 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22630 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22742 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22857 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22919 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22981 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23043 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23105 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23167 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23229 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23291 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23353 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23447 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23530 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23723 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23835 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23937 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24049 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24161 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24276 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24338 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24400 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24462 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24524 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24586 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24648 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24710 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24772 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24881 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24985 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25047 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25118 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25163 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25190 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25312 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25374 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25436 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25507 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25716 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25890 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26060 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26240 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26339 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26451 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26563 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26675 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26787 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26839 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26844 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27061 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27066 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27283 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27288 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27505 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27510 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27727 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27732 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27879 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27951 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28028 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28105 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28191 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28257 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28323 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28389 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28496 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28595 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28694 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28760 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28767 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28774 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28781 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28786 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28991 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28996 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29247 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29252 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29259 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29264 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29271 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29276 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29283 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29290 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29417 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29424 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29431 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29438 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29528 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29613 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29695 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29765 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29770 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29931 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30013 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30020 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30027 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30034 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30098 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30105 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30112 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30119 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30190 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30275 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30394 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30401 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30408 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30415 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30477 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30547 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30795 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30802 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30809 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30880 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30885 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30990 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30997 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31109 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31116 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31123 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31130 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31263 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31291 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31296 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31561 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31638 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31714 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31721 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31728 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31735 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31806 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31813 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31820 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31827 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31834 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31841 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31848 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31855 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31862 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31869 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31876 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31883 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31890 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31897 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31904 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31911 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31918 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31925 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31932 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31939 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31946 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31953 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31960 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31967 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31974 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31981 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31988 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32080 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32157 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32274 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32281 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32288 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32295 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32304 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32311 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32318 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32325 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32334 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32341 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32348 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32355 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32362 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32369 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32443 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32450 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32457 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32464 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
	debug_source C
	FNCALL	_main,_dashboard
	FNCALL	_main,_display_menu
	FNCALL	_main,_init_config
	FNCALL	_main,_password
	FNCALL	_main,_setting_log
	FNCALL	_setting_log,_change_password
	FNCALL	_setting_log,_clear_log
	FNCALL	_setting_log,_download_log
	FNCALL	_setting_log,_set_time
	FNCALL	_setting_log,_view_log
	FNCALL	_view_log,_clcd_print
	FNCALL	_view_log,_clcd_putch
	FNCALL	_view_log,_clcd_write
	FNCALL	_view_log,_read_ext_eeprom
	FNCALL	_view_log,_read_switches
	FNCALL	_set_time,___lwmod
	FNCALL	_set_time,_clcd_print
	FNCALL	_set_time,_clcd_putch
	FNCALL	_set_time,_clcd_write
	FNCALL	_set_time,_read_switches
	FNCALL	_set_time,_write_ds1307
	FNCALL	_download_log,_clcd_print
	FNCALL	_download_log,_clcd_write
	FNCALL	_download_log,_puts
	FNCALL	_download_log,_read_ext_eeprom
	FNCALL	_puts,_putch
	FNCALL	_clear_log,_clcd_print
	FNCALL	_clear_log,_clcd_write
	FNCALL	_change_password,_clcd_print
	FNCALL	_change_password,_clcd_putch
	FNCALL	_change_password,_clcd_write
	FNCALL	_change_password,_read_ext_eeprom
	FNCALL	_change_password,_read_switches
	FNCALL	_change_password,_strcmp
	FNCALL	_change_password,_write_ext_eeprom
	FNCALL	_password,___awdiv
	FNCALL	_password,___awmod
	FNCALL	_password,_clcd_print
	FNCALL	_password,_clcd_putch
	FNCALL	_password,_clcd_write
	FNCALL	_password,_read_ext_eeprom
	FNCALL	_password,_read_switches
	FNCALL	_read_ext_eeprom,_i2c_read1
	FNCALL	_read_ext_eeprom,_i2c_rep_start1
	FNCALL	_read_ext_eeprom,_i2c_start1
	FNCALL	_read_ext_eeprom,_i2c_stop1
	FNCALL	_read_ext_eeprom,_i2c_write1
	FNCALL	_i2c_rep_start1,_i2c_idle1
	FNCALL	_i2c_read1,_i2c_rx_mode1
	FNCALL	_i2c_rx_mode1,_i2c_idle1
	FNCALL	_init_config,_init_adc
	FNCALL	_init_config,_init_clcd
	FNCALL	_init_config,_init_ds1307
	FNCALL	_init_config,_init_i2c
	FNCALL	_init_config,_init_matrix_keypad
	FNCALL	_init_config,_init_uart
	FNCALL	_init_ds1307,_read_ds1307
	FNCALL	_init_ds1307,_write_ds1307
	FNCALL	_write_ds1307,_i2c_start
	FNCALL	_write_ds1307,_i2c_stop
	FNCALL	_write_ds1307,_i2c_write
	FNCALL	_init_clcd,_clcd_write
	FNCALL	_display_menu,_clcd_print
	FNCALL	_display_menu,_clcd_putch
	FNCALL	_display_menu,_clcd_write
	FNCALL	_display_menu,_read_switches
	FNCALL	_dashboard,___ftdiv
	FNCALL	_dashboard,___fttol
	FNCALL	_dashboard,___lwdiv
	FNCALL	_dashboard,___lwmod
	FNCALL	_dashboard,___lwtoft
	FNCALL	_dashboard,_clcd_print
	FNCALL	_dashboard,_clcd_putch
	FNCALL	_dashboard,_clcd_write
	FNCALL	_dashboard,_get_time
	FNCALL	_dashboard,_read_adc
	FNCALL	_dashboard,_read_switches
	FNCALL	_dashboard,_store_event
	FNCALL	_store_event,___lwdiv
	FNCALL	_store_event,___lwmod
	FNCALL	_store_event,_write_ext_eeprom
	FNCALL	_write_ext_eeprom,_i2c_start1
	FNCALL	_write_ext_eeprom,_i2c_stop1
	FNCALL	_write_ext_eeprom,_i2c_write1
	FNCALL	_i2c_write1,_i2c_idle1
	FNCALL	_i2c_stop1,_i2c_idle1
	FNCALL	_i2c_start1,_i2c_idle1
	FNCALL	_read_switches,_scan_key
	FNCALL	_get_time,_read_ds1307
	FNCALL	_read_ds1307,_i2c_read
	FNCALL	_read_ds1307,_i2c_rep_start
	FNCALL	_read_ds1307,_i2c_start
	FNCALL	_read_ds1307,_i2c_stop
	FNCALL	_read_ds1307,_i2c_write
	FNCALL	_i2c_write,_i2c_idle
	FNCALL	_i2c_stop,_i2c_idle
	FNCALL	_i2c_start,_i2c_idle
	FNCALL	_i2c_rep_start,_i2c_idle
	FNCALL	_i2c_read,_i2c_no_ack
	FNCALL	_i2c_read,_i2c_rx_mode
	FNCALL	_i2c_rx_mode,_i2c_idle
	FNCALL	_clcd_putch,_clcd_write
	FNCALL	_clcd_print,_clcd_write
	FNCALL	___lwtoft,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNROOT	_main
	global	read_switches@once
	global	_menu_view
	global	_pass
	global	clear_log@de
	global	view_log@del
	global	download_log@el_271
	global	download_log@el_269
	global	download_log@del
	global	_EV
psect	idataCOMRAM,class=CODE,space=0,delta=1,noexec
global __pidataCOMRAM
__pidataCOMRAM:
	file	"Matrix_KEYPAD.c"
	line	96

;initializer for read_switches@once
	db	low(01h)
psect	idataBANK0,class=CODE,space=0,delta=1,noexec
global __pidataBANK0
__pidataBANK0:
	file	"main.h"
	line	26

;initializer for _menu_view
		db	low(STR_40)
	db	high(STR_40)

		db	low(STR_41)
	db	high(STR_41)

		db	low(STR_42)
	db	high(STR_42)

		db	low(STR_43)
	db	high(STR_43)

		db	low(STR_44)
	db	high(STR_44)

		db	low(STR_45)
	db	high(STR_45)

	line	27

;initializer for _pass
	db	low(031h)
	db	low(031h)
	db	low(031h)
	db	low(031h)
	db	low(0)
	file	"main.c"
	line	588

;initializer for clear_log@de
	dw	(07A1200h) & 0xffff
	dw	highword(07A1200h)
	line	237

;initializer for view_log@del
	dw	(0C3500h) & 0xffff
	dw	highword(0C3500h)
	line	190

;initializer for download_log@el_271
	dw	(0C3500h) & 0xffff
	dw	highword(0C3500h)
	line	185

;initializer for download_log@el_269
	dw	(0C3500h) & 0xffff
	dw	highword(0C3500h)
	line	183

;initializer for download_log@del
	dw	(030D40h) & 0xffff
	dw	highword(030D40h)
	file	"main.h"
	line	31

;initializer for _value2
	dw	(01h)&0ffffh
	line	25

;initializer for _EV
	db	low(04Fh)
	db	low(04Eh)
	db	low(0)
	db	low(047h)
	db	low(052h)
	db	low(0)
	db	low(047h)
	db	low(04Eh)
	db	low(0)
	db	low(047h)
	db	low(031h)
	db	low(0)
	db	low(047h)
	db	low(032h)
	db	low(0)
	db	low(047h)
	db	low(033h)
	db	low(0)
	db	low(047h)
	db	low(034h)
	db	low(0)
	db	low(043h)
	db	low(020h)
	db	low(0)
	db   0
	db   0
	db   0
	global	change_password@delay
	global	set_time@delay
	global	_clock_reg
	global	view_log@view_key
	global	view_log@view_select2
	global	view_log@view_select1
	global	set_time@val2
	global	set_time@val1
	global	set_time@change
	global	_event
	global	_equal
	global	_t_count2
	global	_t_count1
	global	_count
	global	_flag
	global	_clear
	global	_RPM
	global	_l
	global	read_switches@key
	global	change_password@index2
	global	change_password@index1
	global	_key
	global	_log
	global	_menu
	global	_log_flag
	global	_store_data
	global	_in_pass
	global	_time
	global	_logs
	global	_ADRESL
_ADRESL	set	0xFC3
	global	_ADRESH
_ADRESH	set	0xFC4
	global	_RCREG
_RCREG	set	0xFAE
	global	_TXREG
_TXREG	set	0xFAD
	global	_SPBRG
_SPBRG	set	0xFAF
	global	_SSPADD
_SSPADD	set	0xFC8
	global	_GODONE
_GODONE	set	0x7E11
	global	_ABDOVF
_ABDOVF	set	0x7DC7
	global	_CKE
_CKE	set	0x7E3E
	global	_TRISC
_TRISC	set	0xF94
	global	_TRISD
_TRISD	set	0xF95
	global	_ADCON0
_ADCON0	set	0xFC2
	global	_PORTBbits
_PORTBbits	set	0xF81
	global	_RD7
_RD7	set	0x7C1F
	global	_RC0
_RC0	set	0x7C10
	global	_RC2
_RC2	set	0x7C12
	global	_GO
_GO	set	0x7E11
	global	_ADON
_ADON	set	0x7E10
	global	_VCFG0
_VCFG0	set	0x7E0C
	global	_VCFG1
_VCFG1	set	0x7E0D
	global	_ADCS2
_ADCS2	set	0x7E02
	global	_ADCS1
_ADCS1	set	0x7E01
	global	_ADCS0
_ADCS0	set	0x7E00
	global	_ACQT0
_ACQT0	set	0x7E03
	global	_ACQT1
_ACQT1	set	0x7E04
	global	_ACQT2
_ACQT2	set	0x7E05
	global	_RCIF
_RCIF	set	0x7CF5
	global	_RCIE
_RCIE	set	0x7CED
	global	_TXIF
_TXIF	set	0x7CF4
	global	_ABDEN
_ABDEN	set	0x7DC0
	global	_WUE
_WUE	set	0x7DC1
	global	_BRG16
_BRG16	set	0x7DC3
	global	_SCKP
_SCKP	set	0x7DC4
	global	_RCIDL
_RCIDL	set	0x7DC6
	global	_RX9D
_RX9D	set	0x7D58
	global	_OERR
_OERR	set	0x7D59
	global	_FERR
_FERR	set	0x7D5A
	global	_ADDEN
_ADDEN	set	0x7D5B
	global	_CREN
_CREN	set	0x7D5C
	global	_SREN
_SREN	set	0x7D5D
	global	_RX9
_RX9	set	0x7D5E
	global	_TX9D
_TX9D	set	0x7D60
	global	_TRMT
_TRMT	set	0x7D61
	global	_BRGH
_BRGH	set	0x7D62
	global	_SENDB
_SENDB	set	0x7D63
	global	_SYNC
_SYNC	set	0x7D64
	global	_TXEN
_TXEN	set	0x7D65
	global	_TX9
_TX9	set	0x7D66
	global	_TRISC6
_TRISC6	set	0x7CA6
	global	_TRISC7
_TRISC7	set	0x7CA7
	global	_ACKEN
_ACKEN	set	0x7E2C
	global	_ACKDT
_ACKDT	set	0x7E2D
	global	_RCEN
_RCEN	set	0x7E2B
	global	_RSEN
_RSEN	set	0x7E29
	global	_PEN
_PEN	set	0x7E2A
	global	_SEN
_SEN	set	0x7E28
	global	_SMP
_SMP	set	0x7E3F
	global	_TRISC4
_TRISC4	set	0x7CA4
	global	_PORTB
_PORTB	set	0xF81
	global	_TRISB
_TRISB	set	0xF93
	global	_TRISC3
_TRISC3	set	0x7CA3
	global	_SSPCON1
_SSPCON1	set	0xFC6
	global	_TRISD7
_TRISD7	set	0x7CAF
	global	_TXIE
_TXIE	set	0x7CEC
	global	_SSPIF
_SSPIF	set	0x7CF3
	global	_SSPBUF
_SSPBUF	set	0xFC9
	global	_RBPU
_RBPU	set	0x7F8F
	global	_BCLIF
_BCLIF	set	0x7D0B
	global	_SPEN
_SPEN	set	0x7D5F
	global	_CSRC
_CSRC	set	0x7D67
	global	_ACKSTAT
_ACKSTAT	set	0x7E2E
	global	_ADCON1
_ADCON1	set	0xFC1
	global	_ADFM
_ADFM	set	0x7E07
	global	_PORTD
_PORTD	set	0xF83
	global	_RC1
_RC1	set	0x7C11
psect	mediumconst,class=MEDIUMCONST,space=0,reloc=2,noexec
global __pmediumconst
__pmediumconst:
	db	0
	
STR_29:
	db	89	;'Y'
	db	111	;'o'
	db	117	;'u'
	db	32
	db	97	;'a'
	db	114	;'r'
	db	101	;'e'
	db	32
	db	66	;'B'
	db	108	;'l'
	db	111	;'o'
	db	99	;'c'
	db	107	;'k'
	db	101	;'e'
	db	100	;'d'
	db	32
	db	32
	db	32
	db	32
	db	32
	db	0
	
STR_9:
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	0
	
STR_10:
	db	68	;'D'
	db	79	;'O'
	db	87	;'W'
	db	78	;'N'
	db	76	;'L'
	db	79	;'O'
	db	65	;'A'
	db	68	;'D'
	db	69	;'E'
	db	68	;'D'
	db	32
	db	76	;'L'
	db	79	;'O'
	db	71	;'G'
	db	83	;'S'
	db	10
	db	13
	db	0
	
STR_21:
	db	83	;'S'
	db	69	;'E'
	db	84	;'T'
	db	32
	db	80	;'P'
	db	65	;'A'
	db	83	;'S'
	db	83	;'S'
	db	87	;'W'
	db	79	;'O'
	db	82	;'R'
	db	68	;'D'
	db	32
	db	32
	db	32
	db	32
	db	0
	
STR_2:
	db	68	;'D'
	db	111	;'o'
	db	119	;'w'
	db	110	;'n'
	db	108	;'l'
	db	111	;'o'
	db	97	;'a'
	db	100	;'d'
	db	32
	db	76	;'L'
	db	111	;'o'
	db	103	;'g'
	db	32
	db	32
	db	32
	db	32
	db	0
	
STR_5:
	db	67	;'C'
	db	104	;'h'
	db	97	;'a'
	db	110	;'n'
	db	103	;'g'
	db	101	;'e'
	db	32
	db	80	;'P'
	db	97	;'a'
	db	115	;'s'
	db	115	;'s'
	db	119	;'w'
	db	111	;'o'
	db	114	;'r'
	db	100	;'d'
	db	32
	db	0
	
STR_14:
	db	76	;'L'
	db	79	;'O'
	db	71	;'G'
	db	83	;'S'
	db	95	;'_'
	db	65	;'A'
	db	82	;'R'
	db	69	;'E'
	db	95	;'_'
	db	67	;'C'
	db	76	;'L'
	db	69	;'E'
	db	65	;'A'
	db	82	;'R'
	db	69	;'E'
	db	68	;'D'
	db	0
	
STR_20:
	db	82	;'R'
	db	69	;'E'
	db	69	;'E'
	db	78	;'N'
	db	84	;'T'
	db	69	;'E'
	db	82	;'R'
	db	32
	db	80	;'P'
	db	65	;'A'
	db	83	;'S'
	db	83	;'S'
	db	87	;'W'
	db	79	;'O'
	db	82	;'R'
	db	68	;'D'
	db	0
	
STR_18:
	db	84	;'T'
	db	73	;'I'
	db	77	;'M'
	db	69	;'E'
	db	32
	db	32
	db	32
	db	32
	db	32
	db	69	;'E'
	db	86	;'V'
	db	32
	db	32
	db	82	;'R'
	db	80	;'P'
	db	77	;'M'
	db	0
	
STR_8:
	db	83	;'S'
	db	69	;'E'
	db	84	;'T'
	db	32
	db	84	;'T'
	db	73	;'I'
	db	77	;'M'
	db	69	;'E'
	db	32
	db	83	;'S'
	db	85	;'U'
	db	67	;'C'
	db	67	;'C'
	db	69	;'E'
	db	83	;'S'
	db	83	;'S'
	db	0
	
STR_4:
	db	83	;'S'
	db	101	;'e'
	db	116	;'t'
	db	32
	db	84	;'T'
	db	105	;'i'
	db	109	;'m'
	db	101	;'e'
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	0
	
STR_12:
	db	32
	db	32
	db	68	;'D'
	db	79	;'O'
	db	87	;'W'
	db	78	;'N'
	db	76	;'L'
	db	79	;'O'
	db	65	;'A'
	db	68	;'D'
	db	73	;'I'
	db	78	;'N'
	db	71	;'G'
	db	32
	db	32
	db	0
	
STR_15:
	db	76	;'L'
	db	111	;'o'
	db	103	;'g'
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	0
	
STR_22:
	db	83	;'S'
	db	85	;'U'
	db	67	;'C'
	db	67	;'C'
	db	69	;'E'
	db	83	;'S'
	db	83	;'S'
	db	70	;'F'
	db	85	;'U'
	db	76	;'L'
	db	32
	db	32
	db	32
	db	32
	db	0
	
STR_13:
	db	32
	db	32
	db	68	;'D'
	db	79	;'O'
	db	87	;'W'
	db	78	;'N'
	db	76	;'L'
	db	79	;'O'
	db	65	;'A'
	db	68	;'D'
	db	69	;'E'
	db	68	;'D'
	db	32
	db	32
	db	0
	
STR_27:
	db	32
	db	65	;'A'
	db	116	;'t'
	db	116	;'t'
	db	101	;'e'
	db	109	;'m'
	db	112	;'p'
	db	116	;'t'
	db	32
	db	108	;'l'
	db	101	;'e'
	db	102	;'f'
	db	116	;'t'
	db	32
	db	0
	
STR_7:
	db	69	;'E'
	db	78	;'N'
	db	84	;'T'
	db	69	;'E'
	db	82	;'R'
	db	32
	db	78	;'N'
	db	69	;'E'
	db	87	;'W'
	db	32
	db	84	;'T'
	db	73	;'I'
	db	77	;'M'
	db	69	;'E'
	db	0
	
STR_1:
	db	86	;'V'
	db	105	;'i'
	db	101	;'e'
	db	119	;'w'
	db	32
	db	76	;'L'
	db	111	;'o'
	db	103	;'g'
	db	32
	db	32
	db	32
	db	32
	db	32
	db	0
	
STR_3:
	db	67	;'C'
	db	108	;'l'
	db	101	;'e'
	db	97	;'a'
	db	114	;'r'
	db	32
	db	76	;'L'
	db	111	;'o'
	db	103	;'g'
	db	32
	db	32
	db	32
	db	32
	db	0
	
STR_32:
	db	67	;'C'
	db	76	;'L'
	db	69	;'E'
	db	65	;'A'
	db	82	;'R'
	db	73	;'I'
	db	78	;'N'
	db	71	;'G'
	db	32
	db	76	;'L'
	db	79	;'O'
	db	71	;'G'
	db	83	;'S'
	db	0
	
STR_23:
	db	83	;'S'
	db	69	;'E'
	db	84	;'T'
	db	32
	db	80	;'P'
	db	65	;'A'
	db	83	;'S'
	db	83	;'S'
	db	87	;'W'
	db	79	;'O'
	db	82	;'R'
	db	68	;'D'
	db	0
	
STR_26:
	db	83	;'S'
	db	85	;'U'
	db	67	;'C'
	db	67	;'C'
	db	69	;'E'
	db	83	;'S'
	db	83	;'S'
	db	70	;'F'
	db	85	;'U'
	db	76	;'L'
	db	0
	
STR_30:
	db	119	;'w'
	db	97	;'a'
	db	105	;'i'
	db	116	;'t'
	db	46
	db	46
	db	46
	db	0
	
STR_24:
	db	70	;'F'
	db	65	;'A'
	db	73	;'I'
	db	76	;'L'
	db	85	;'U'
	db	82	;'R'
	db	69	;'E'
	db	0
STR_33	equ	STR_26+0
STR_19	equ	STR_20+2
STR_25	equ	STR_20+2
STR_16	equ	STR_14+0
STR_38	equ	STR_5+0
STR_44	equ	STR_5+0
STR_36	equ	STR_3+0
STR_42	equ	STR_3+0
STR_35	equ	STR_2+0
STR_41	equ	STR_2+0
STR_34	equ	STR_1+0
STR_40	equ	STR_1+0
STR_37	equ	STR_4+0
STR_43	equ	STR_4+0
STR_6	equ	STR_9+2
STR_28	equ	STR_9+2
STR_39	equ	STR_9+2
STR_45	equ	STR_9+2
STR_17	equ	STR_9+3
STR_31	equ	STR_9+6
STR_11	equ	STR_10+15
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	file	"pic18F4580.as"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pbssCOMRAM
__pbssCOMRAM:
change_password@delay:
       ds      4
set_time@delay:
       ds      4
	global	_clock_reg
_clock_reg:
       ds      3
view_log@view_key:
       ds      2
view_log@view_select2:
       ds      2
view_log@view_select1:
       ds      2
set_time@val2:
       ds      2
set_time@val1:
       ds      2
set_time@change:
       ds      2
	global	_event
_event:
       ds      2
	global	_equal
_equal:
       ds      2
_t_count2:
       ds      2
_t_count1:
       ds      2
	global	_count
_count:
       ds      2
	global	_flag
_flag:
       ds      2
	global	_clear
_clear:
       ds      2
	global	_RPM
_RPM:
       ds      2
	global	_l
_l:
       ds      2
read_switches@key:
       ds      1
change_password@index2:
       ds      1
change_password@index1:
       ds      1
	global	_key4
	global	_key4
_key4:
       ds      1
	global	_key2
	global	_key2
_key2:
       ds      1
	global	_key1
	global	_key1
_key1:
       ds      1
	global	_key
_key:
       ds      1
	global	_log
_log:
       ds      1
	global	_menu
_menu:
       ds      1
	global	_d
	global	_d
_d:
       ds      1
	global	_log_flag
_log_flag:
       ds      1
psect	dataCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pdataCOMRAM
__pdataCOMRAM:
	file	"Matrix_KEYPAD.c"
	line	96
read_switches@once:
       ds      1
psect	bssBANK0,class=BANK0,space=1,noexec,lowdata
global __pbssBANK0
__pbssBANK0:
download_log@F10526:
       ds      17
	global	_store_data
_store_data:
       ds      11
	global	_delay3
	global	_delay3
_delay3:
       ds      4
	global	_delay
	global	_delay
_delay:
       ds      4
	global	_in_pass
_in_pass:
       ds      4
_t_count2@main$F536:
       ds      2
_t_count1@main$F535:
       ds      2
_t_count2@main$F451:
       ds      2
_t_count1@main$F450:
       ds      2
	global	_once
	global	_once
_once:
       ds      2
	global	_equal1
	global	_equal1
_equal1:
       ds      2
	global	_k
	global	_k
_k:
       ds      2
	global	_value1
	global	_value1
_value1:
       ds      2
	global	_flag1
	global	_flag1
_flag1:
       ds      2
	global	_m
	global	_m
_m:
       ds      2
	global	_blinker
	global	_blinker
_blinker:
       ds      2
	global	_time
_time:
       ds      9
psect	dataBANK0,class=BANK0,space=1,noexec,lowdata
global __pdataBANK0
__pdataBANK0:
	file	"main.h"
	line	26
	global	_menu_view
_menu_view:
       ds      12
psect	dataBANK0
	file	"main.h"
	line	27
	global	_pass
_pass:
       ds      5
psect	dataBANK0
	file	"main.c"
	line	588
clear_log@de:
       ds      4
psect	dataBANK0
	file	"main.c"
	line	237
view_log@del:
       ds      4
psect	dataBANK0
	file	"main.c"
	line	190
download_log@el_271:
       ds      4
psect	dataBANK0
	file	"main.c"
	line	185
download_log@el_269:
       ds      4
psect	dataBANK0
	file	"main.c"
	line	183
download_log@del:
       ds      4
psect	dataBANK0
	file	"main.h"
	line	31
	global	_value2
	global	_value2
_value2:
       ds      2
psect	dataBANK0
	file	"main.h"
	line	25
	global	_EV
_EV:
       ds      27
psect	bssBANK1,class=BANK1,space=1,noexec,lowdata
global __pbssBANK1
__pbssBANK1:
	global	_logs
_logs:
       ds      170
	file	"pic18F4580.as"
	line	#
psect	cinit
; Initialize objects allocated to BANK0 (66 bytes)
	global __pidataBANK0
	; load TBLPTR registers with __pidataBANK0
	movlw	low (__pidataBANK0)
	movwf	tblptrl
	movlw	high(__pidataBANK0)
	movwf	tblptrh
	movlw	low highword(__pidataBANK0)
	movwf	tblptru
	lfsr	0,__pdataBANK0
	lfsr	1,66
	copy_data0:
	tblrd	*+
	movff	tablat, postinc0
	movf	postdec1,w
	movf	fsr1l,w
	bnz	copy_data0
; Initialize objects allocated to COMRAM (1 bytes)
	global __pidataCOMRAM
	; load TBLPTR registers with __pidataCOMRAM
	movlw	low (__pidataCOMRAM)
	movwf	tblptrl
	movlw	high(__pidataCOMRAM)
	movwf	tblptrh
	movlw	low highword(__pidataCOMRAM)
	movwf	tblptru
	tblrd*+ ;fetch initializer
	movff	tablat, __pdataCOMRAM+0		
	line	#
; Clear objects allocated to BANK1 (170 bytes)
	global __pbssBANK1
lfsr	0,__pbssBANK1
movlw	170
clear_0:
clrf	postinc0,c
decf	wreg
bnz	clear_0
; Clear objects allocated to BANK0 (71 bytes)
	global __pbssBANK0
lfsr	0,__pbssBANK0
movlw	71
clear_1:
clrf	postinc0,c
decf	wreg
bnz	clear_1
; Clear objects allocated to COMRAM (52 bytes)
	global __pbssCOMRAM
lfsr	0,__pbssCOMRAM
movlw	52
clear_2:
clrf	postinc0,c
decf	wreg
bnz	clear_2
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
	GLOBAL	__Lmediumconst
	movlw	low highword(__Lmediumconst)
	movwf	tblptru
movlb 0
goto _main	;jump to C main() function
psect	cstackCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pcstackCOMRAM
__pcstackCOMRAM:
?_read_ds1307:	; 1 bytes @ 0x0
?_i2c_start:	; 1 bytes @ 0x0
??_i2c_start:	; 1 bytes @ 0x0
?_i2c_write:	; 1 bytes @ 0x0
??_i2c_write:	; 1 bytes @ 0x0
?_i2c_stop:	; 1 bytes @ 0x0
??_i2c_stop:	; 1 bytes @ 0x0
?_i2c_rep_start:	; 1 bytes @ 0x0
??_i2c_rep_start:	; 1 bytes @ 0x0
?_i2c_read:	; 1 bytes @ 0x0
??_i2c_read:	; 1 bytes @ 0x0
?_init_matrix_keypad:	; 1 bytes @ 0x0
??_init_matrix_keypad:	; 1 bytes @ 0x0
?_init_clcd:	; 1 bytes @ 0x0
?_init_adc:	; 1 bytes @ 0x0
??_init_adc:	; 1 bytes @ 0x0
?_read_switches:	; 1 bytes @ 0x0
??_read_switches:	; 1 bytes @ 0x0
?_clcd_write:	; 1 bytes @ 0x0
?_read_ext_eeprom:	; 1 bytes @ 0x0
?_init_ds1307:	; 1 bytes @ 0x0
?_init_i2c:	; 1 bytes @ 0x0
??_init_i2c:	; 1 bytes @ 0x0
?_i2c_idle:	; 1 bytes @ 0x0
??_i2c_idle:	; 1 bytes @ 0x0
?_i2c_rx_mode:	; 1 bytes @ 0x0
??_i2c_rx_mode:	; 1 bytes @ 0x0
?_i2c_no_ack:	; 1 bytes @ 0x0
??_i2c_no_ack:	; 1 bytes @ 0x0
?_init_uart:	; 1 bytes @ 0x0
??_init_uart:	; 1 bytes @ 0x0
?_putch:	; 1 bytes @ 0x0
??_putch:	; 1 bytes @ 0x0
?_init_config:	; 1 bytes @ 0x0
?_set_time:	; 1 bytes @ 0x0
?_download_log:	; 1 bytes @ 0x0
?_view_log:	; 1 bytes @ 0x0
?_store_event:	; 1 bytes @ 0x0
?_change_password:	; 1 bytes @ 0x0
?_display_menu:	; 1 bytes @ 0x0
?_clear_log:	; 1 bytes @ 0x0
?_setting_log:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_scan_key:	; 1 bytes @ 0x0
??_scan_key:	; 1 bytes @ 0x0
?_i2c_idle1:	; 1 bytes @ 0x0
??_i2c_idle1:	; 1 bytes @ 0x0
?_i2c_start1:	; 1 bytes @ 0x0
??_i2c_start1:	; 1 bytes @ 0x0
?_i2c_stop1:	; 1 bytes @ 0x0
??_i2c_stop1:	; 1 bytes @ 0x0
?_i2c_rep_start1:	; 1 bytes @ 0x0
??_i2c_rep_start1:	; 1 bytes @ 0x0
?_i2c_write1:	; 1 bytes @ 0x0
??_i2c_write1:	; 1 bytes @ 0x0
?_i2c_rx_mode1:	; 1 bytes @ 0x0
??_i2c_rx_mode1:	; 1 bytes @ 0x0
?_i2c_read1:	; 1 bytes @ 0x0
??_i2c_read1:	; 1 bytes @ 0x0
	global	?_read_adc
?_read_adc:	; 2 bytes @ 0x0
	global	?_strcmp
?_strcmp:	; 2 bytes @ 0x0
?_get_time:	; 2 bytes @ 0x0
?_dashboard:	; 2 bytes @ 0x0
?_password:	; 2 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	i2c_write@data
i2c_write@data:	; 1 bytes @ 0x0
	global	putch@byte
putch@byte:	; 1 bytes @ 0x0
	global	read_switches@detection_type
read_switches@detection_type:	; 1 bytes @ 0x0
	global	clcd_write@control_bit
clcd_write@control_bit:	; 1 bytes @ 0x0
	global	i2c_write1@data1
i2c_write1@data1:	; 1 bytes @ 0x0
	global	strcmp@s1
strcmp@s1:	; 1 bytes @ 0x0
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x0
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x0
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	ds   1
??_read_ds1307:	; 1 bytes @ 0x1
?_write_ds1307:	; 1 bytes @ 0x1
??_clcd_write:	; 1 bytes @ 0x1
??_read_ext_eeprom:	; 1 bytes @ 0x1
?_write_ext_eeprom:	; 1 bytes @ 0x1
?_puts:	; 2 bytes @ 0x1
	global	write_ds1307@data
write_ds1307@data:	; 1 bytes @ 0x1
	global	read_ds1307@address
read_ds1307@address:	; 1 bytes @ 0x1
	global	clcd_write@byte
clcd_write@byte:	; 1 bytes @ 0x1
	global	write_ext_eeprom@data1
write_ext_eeprom@data1:	; 1 bytes @ 0x1
	global	read_ext_eeprom@address1
read_ext_eeprom@address1:	; 1 bytes @ 0x1
	global	strcmp@s2
strcmp@s2:	; 1 bytes @ 0x1
	global	puts@s
puts@s:	; 2 bytes @ 0x1
	ds   1
??_write_ds1307:	; 1 bytes @ 0x2
??_init_clcd:	; 1 bytes @ 0x2
?_clcd_print:	; 1 bytes @ 0x2
??_write_ext_eeprom:	; 1 bytes @ 0x2
??_read_adc:	; 1 bytes @ 0x2
??_strcmp:	; 1 bytes @ 0x2
	global	write_ds1307@address
write_ds1307@address:	; 1 bytes @ 0x2
	global	read_ds1307@data
read_ds1307@data:	; 1 bytes @ 0x2
	global	read_ext_eeprom@data1
read_ext_eeprom@data1:	; 1 bytes @ 0x2
	global	clcd_print@data
clcd_print@data:	; 2 bytes @ 0x2
	global	write_ext_eeprom@i
write_ext_eeprom@i:	; 2 bytes @ 0x2
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x2
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x2
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x2
	ds   1
??_init_ds1307:	; 1 bytes @ 0x3
??_puts:	; 1 bytes @ 0x3
??_get_time:	; 1 bytes @ 0x3
	global	init_ds1307@dummy
init_ds1307@dummy:	; 1 bytes @ 0x3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	ds   1
??_init_config:	; 1 bytes @ 0x4
??___awdiv:	; 1 bytes @ 0x4
??___lwdiv:	; 1 bytes @ 0x4
??___lwmod:	; 1 bytes @ 0x4
	global	clcd_print@addr
clcd_print@addr:	; 1 bytes @ 0x4
	global	write_ext_eeprom@address1
write_ext_eeprom@address1:	; 1 bytes @ 0x4
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x4
	global	strcmp@r
strcmp@r:	; 1 bytes @ 0x4
	global	read_adc@reg_val
read_adc@reg_val:	; 2 bytes @ 0x4
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x4
	ds   1
??_clcd_print:	; 1 bytes @ 0x5
??___ftpack:	; 1 bytes @ 0x5
??_download_log:	; 1 bytes @ 0x5
??_clear_log:	; 1 bytes @ 0x5
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x5
	global	download_log@arr
download_log@arr:	; 17 bytes @ 0x5
	ds   1
	global	read_adc@channel
read_adc@channel:	; 1 bytes @ 0x6
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x6
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x6
	ds   1
??_store_event:	; 1 bytes @ 0x7
	global	store_event@y
store_event@y:	; 2 bytes @ 0x7
	ds   1
	global	?___awmod
?___awmod:	; 2 bytes @ 0x8
	global	?___lwtoft
?___lwtoft:	; 3 bytes @ 0x8
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x8
	global	___lwtoft@c
___lwtoft@c:	; 2 bytes @ 0x8
	ds   2
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0xA
	ds   1
??___lwtoft:	; 1 bytes @ 0xB
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0xB
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0xB
	ds   1
??___awmod:	; 1 bytes @ 0xC
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0xC
	ds   1
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0xD
	ds   1
?_clcd_putch:	; 1 bytes @ 0xE
	global	clcd_putch@addr
clcd_putch@addr:	; 1 bytes @ 0xE
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0xE
	ds   1
??_clcd_putch:	; 1 bytes @ 0xF
	global	clcd_putch@data
clcd_putch@data:	; 1 bytes @ 0xF
	ds   1
??_set_time:	; 1 bytes @ 0x10
??_view_log:	; 1 bytes @ 0x10
??_change_password:	; 1 bytes @ 0x10
??_password:	; 1 bytes @ 0x10
??_display_menu:	; 1 bytes @ 0x10
	global	display_menu@key2
display_menu@key2:	; 1 bytes @ 0x10
	global	change_password@re_enter
change_password@re_enter:	; 5 bytes @ 0x10
	ds   1
??___ftdiv:	; 1 bytes @ 0x11
	ds   1
	global	password@delay2
password@delay2:	; 4 bytes @ 0x12
	ds   2
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x14
	global	set_time@blink
set_time@blink:	; 2 bytes @ 0x14
	ds   1
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x15
	global	change_password@new_password
change_password@new_password:	; 5 bytes @ 0x15
	ds   1
	global	set_time@hour
set_time@hour:	; 1 bytes @ 0x16
	global	download_log@i
download_log@i:	; 2 bytes @ 0x16
	global	password@blink
password@blink:	; 2 bytes @ 0x16
	ds   1
	global	set_time@min
set_time@min:	; 1 bytes @ 0x17
	ds   1
	global	set_time@sec
set_time@sec:	; 1 bytes @ 0x18
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x18
	global	password@delay2_310
password@delay2_310:	; 4 bytes @ 0x18
	ds   1
	global	set_time@set_time_key
set_time@set_time_key:	; 1 bytes @ 0x19
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x19
	ds   1
	global	?___fttol
?___fttol:	; 4 bytes @ 0x1A
	global	set_time@change_time
set_time@change_time:	; 1 bytes @ 0x1A
	global	change_password@key3
change_password@key3:	; 1 bytes @ 0x1A
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x1A
	ds   1
	global	change_password@h
change_password@h:	; 1 bytes @ 0x1B
	ds   1
??_setting_log:	; 1 bytes @ 0x1C
	global	password@de
password@de:	; 4 bytes @ 0x1C
	ds   2
??___fttol:	; 1 bytes @ 0x1E
	ds   2
	global	password@T
password@T:	; 2 bytes @ 0x20
	ds   2
	global	password@x
password@x:	; 2 bytes @ 0x22
	ds   1
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x23
	ds   1
	global	password@z
password@z:	; 2 bytes @ 0x24
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x24
	ds   2
	global	password@i
password@i:	; 2 bytes @ 0x26
	ds   2
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x28
	ds   1
??_dashboard:	; 1 bytes @ 0x29
	ds   1
??_main:	; 1 bytes @ 0x2A
;!
;!Data Sizes:
;!    Strings     366
;!    Constant    0
;!    Data        67
;!    BSS         293
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           95     42      95
;!    BANK0           160      0     137
;!    BANK1           256      0     170
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0

;!
;!Pointer List with Targets:
;!
;!    strcmp@s2	PTR const unsigned char  size(1) Largest target is 5
;!		 -> change_password@re_enter(COMRAM[5]), 
;!
;!    strcmp@s1	PTR const unsigned char  size(1) Largest target is 5
;!		 -> change_password@new_password(COMRAM[5]), 
;!
;!    clcd_print@data	PTR const unsigned char  size(2) Largest target is 170
;!		 -> STR_45(CODE[17]), STR_44(CODE[17]), STR_43(CODE[16]), STR_42(CODE[14]), 
;!		 -> STR_41(CODE[17]), STR_40(CODE[14]), STR_39(CODE[17]), STR_38(CODE[17]), 
;!		 -> STR_37(CODE[16]), STR_36(CODE[14]), STR_35(CODE[17]), STR_34(CODE[14]), 
;!		 -> STR_33(CODE[11]), STR_32(CODE[14]), STR_31(CODE[13]), STR_30(CODE[8]), 
;!		 -> STR_29(CODE[21]), STR_28(CODE[17]), STR_27(CODE[15]), STR_26(CODE[11]), 
;!		 -> STR_25(CODE[15]), STR_24(CODE[8]), STR_23(CODE[13]), STR_22(CODE[15]), 
;!		 -> STR_21(CODE[17]), STR_20(CODE[17]), STR_19(CODE[15]), STR_18(CODE[17]), 
;!		 -> EV(BANK0[27]), STR_17(CODE[16]), STR_16(CODE[17]), STR_15(CODE[15]), 
;!		 -> logs(BANK1[170]), STR_14(CODE[17]), STR_13(CODE[15]), STR_12(CODE[16]), 
;!		 -> STR_9(CODE[19]), STR_8(CODE[17]), STR_7(CODE[15]), time(BANK0[9]), 
;!		 -> STR_6(CODE[17]), STR_5(CODE[17]), STR_4(CODE[16]), STR_3(CODE[14]), 
;!		 -> STR_2(CODE[17]), STR_1(CODE[14]), 
;!
;!    set_time@change_time	PTR unsigned char  size(1) Largest target is 9
;!		 -> time(BANK0[9]), 
;!
;!    menu_view	PTR unsigned char [6] size(2) Largest target is 17
;!		 -> STR_45(CODE[17]), STR_44(CODE[17]), STR_43(CODE[16]), STR_42(CODE[14]), 
;!		 -> STR_41(CODE[17]), STR_40(CODE[14]), STR_39(CODE[17]), STR_38(CODE[17]), 
;!		 -> STR_37(CODE[16]), STR_36(CODE[14]), STR_35(CODE[17]), STR_34(CODE[14]), 
;!		 -> STR_6(CODE[17]), STR_5(CODE[17]), STR_4(CODE[16]), STR_3(CODE[14]), 
;!		 -> STR_2(CODE[17]), STR_1(CODE[14]), 
;!
;!    puts@s	PTR const unsigned char  size(2) Largest target is 18
;!		 -> STR_11(CODE[3]), STR_10(CODE[18]), download_log@arr(COMRAM[17]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _main->_dashboard
;!    _setting_log->_change_password
;!    _view_log->_clcd_putch
;!    _set_time->_clcd_putch
;!    _download_log->_clcd_print
;!    _puts->_putch
;!    _clear_log->_clcd_print
;!    _change_password->_clcd_putch
;!    _password->_clcd_putch
;!    _read_ext_eeprom->_i2c_write1
;!    ___awmod->___awdiv
;!    _init_config->_init_ds1307
;!    _init_ds1307->_read_ds1307
;!    _init_ds1307->_write_ds1307
;!    _write_ds1307->_i2c_write
;!    _init_clcd->_clcd_write
;!    _display_menu->_clcd_putch
;!    _dashboard->___fttol
;!    _store_event->___lwdiv
;!    _write_ext_eeprom->_i2c_write1
;!    _get_time->_read_ds1307
;!    _read_ds1307->_i2c_write
;!    _clcd_putch->___awmod
;!    _clcd_print->_clcd_write
;!    ___lwtoft->___ftpack
;!    ___fttol->___ftdiv
;!    ___ftdiv->___lwtoft
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0  107581
;!                          _dashboard
;!                       _display_menu
;!                        _init_config
;!                           _password
;!                        _setting_log
;! ---------------------------------------------------------------------------------
;! (1) _setting_log                                          0     0      0   57207
;!                    _change_password
;!                          _clear_log
;!                       _download_log
;!                           _set_time
;!                           _view_log
;! ---------------------------------------------------------------------------------
;! (2) _view_log                                             1     1      0   12286
;!                                             16 COMRAM     1     1      0
;!                         _clcd_print
;!                         _clcd_putch
;!                         _clcd_write
;!                    _read_ext_eeprom
;!                      _read_switches
;! ---------------------------------------------------------------------------------
;! (2) _set_time                                            11    11      0   14346
;!                                             16 COMRAM    11    11      0
;!                            ___lwmod
;!                         _clcd_print
;!                         _clcd_putch
;!                         _clcd_write
;!                      _read_switches
;!                       _write_ds1307
;! ---------------------------------------------------------------------------------
;! (2) _download_log                                        19    19      0    9201
;!                                              5 COMRAM    19    19      0
;!                         _clcd_print
;!                         _clcd_write
;!                               _puts
;!                    _read_ext_eeprom
;! ---------------------------------------------------------------------------------
;! (3) _puts                                                 2     0      2     295
;!                                              1 COMRAM     2     0      2
;!                              _putch
;! ---------------------------------------------------------------------------------
;! (4) _putch                                                1     1      0      22
;!                                              0 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _clear_log                                            0     0      0    8211
;!                         _clcd_print
;!                         _clcd_write
;! ---------------------------------------------------------------------------------
;! (2) _change_password                                     12    12      0   13163
;!                                             16 COMRAM    12    12      0
;!                         _clcd_print
;!                         _clcd_putch
;!                         _clcd_write
;!                    _read_ext_eeprom
;!                      _read_switches
;!                             _strcmp
;!                   _write_ext_eeprom
;! ---------------------------------------------------------------------------------
;! (3) _strcmp                                               5     3      2     243
;!                                              0 COMRAM     5     3      2
;! ---------------------------------------------------------------------------------
;! (1) _password                                            24    24      0   14230
;!                                             16 COMRAM    24    24      0
;!                            ___awdiv
;!                            ___awmod
;!                         _clcd_print
;!                         _clcd_putch
;!                         _clcd_write
;!                    _read_ext_eeprom
;!                      _read_switches
;! ---------------------------------------------------------------------------------
;! (3) _read_ext_eeprom                                      2     2      0      67
;!                                              1 COMRAM     2     2      0
;!                          _i2c_read1
;!                     _i2c_rep_start1
;!                         _i2c_start1
;!                          _i2c_stop1
;!                         _i2c_write1
;! ---------------------------------------------------------------------------------
;! (4) _i2c_rep_start1                                       0     0      0       0
;!                          _i2c_idle1
;! ---------------------------------------------------------------------------------
;! (4) _i2c_read1                                            0     0      0       0
;!                       _i2c_rx_mode1
;! ---------------------------------------------------------------------------------
;! (5) _i2c_rx_mode1                                         0     0      0       0
;!                          _i2c_idle1
;! ---------------------------------------------------------------------------------
;! (2) ___awmod                                              6     2      4     752
;!                                              8 COMRAM     6     2      4
;!                            ___awdiv (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___awdiv                                              8     4      4     604
;!                                              0 COMRAM     8     4      4
;! ---------------------------------------------------------------------------------
;! (1) _init_config                                          0     0      0    2450
;!                           _init_adc
;!                          _init_clcd
;!                        _init_ds1307
;!                           _init_i2c
;!                 _init_matrix_keypad
;!                          _init_uart
;! ---------------------------------------------------------------------------------
;! (2) _init_uart                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_matrix_keypad                                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_i2c                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_ds1307                                          1     1      0     734
;!                                              3 COMRAM     1     1      0
;!                        _read_ds1307
;!                       _write_ds1307
;! ---------------------------------------------------------------------------------
;! (3) _write_ds1307                                         2     1      1     598
;!                                              1 COMRAM     2     1      1
;!                          _i2c_start
;!                           _i2c_stop
;!                          _i2c_write
;! ---------------------------------------------------------------------------------
;! (2) _init_clcd                                            0     0      0    1716
;!                         _clcd_write
;! ---------------------------------------------------------------------------------
;! (2) _init_adc                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _display_menu                                         1     1      0   12352
;!                                             16 COMRAM     1     1      0
;!                         _clcd_print
;!                         _clcd_putch
;!                         _clcd_write
;!                      _read_switches
;! ---------------------------------------------------------------------------------
;! (1) _dashboard                                            1     1      0   21342
;!                                             41 COMRAM     1     1      0
;!                            ___ftdiv
;!                            ___fttol
;!                            ___lwdiv
;!                            ___lwmod
;!                           ___lwtoft
;!                         _clcd_print
;!                         _clcd_putch
;!                         _clcd_write
;!                           _get_time
;!                           _read_adc
;!                      _read_switches
;!                        _store_event
;! ---------------------------------------------------------------------------------
;! (2) _store_event                                          2     2      0    1412
;!                                              7 COMRAM     2     2      0
;!                            ___lwdiv
;!                            ___lwmod
;!                   _write_ext_eeprom
;! ---------------------------------------------------------------------------------
;! (3) _write_ext_eeprom                                     4     3      1     241
;!                                              1 COMRAM     4     3      1
;!                         _i2c_start1
;!                          _i2c_stop1
;!                         _i2c_write1
;! ---------------------------------------------------------------------------------
;! (4) _i2c_write1                                           1     1      0      22
;!                                              0 COMRAM     1     1      0
;!                          _i2c_idle1
;! ---------------------------------------------------------------------------------
;! (4) _i2c_stop1                                            0     0      0       0
;!                          _i2c_idle1
;! ---------------------------------------------------------------------------------
;! (4) _i2c_start1                                           0     0      0       0
;!                          _i2c_idle1
;! ---------------------------------------------------------------------------------
;! (5) _i2c_idle1                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) ___lwmod                                              5     1      4     615
;!                                              0 COMRAM     5     1      4
;! ---------------------------------------------------------------------------------
;! (3) ___lwdiv                                              7     3      4     466
;!                                              0 COMRAM     7     3      4
;! ---------------------------------------------------------------------------------
;! (3) _read_switches                                        1     1      0      44
;!                                              0 COMRAM     1     1      0
;!                           _scan_key
;! ---------------------------------------------------------------------------------
;! (4) _scan_key                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _read_adc                                             7     5      2      45
;!                                              0 COMRAM     7     5      2
;! ---------------------------------------------------------------------------------
;! (2) _get_time                                             0     0      0      67
;!                        _read_ds1307
;! ---------------------------------------------------------------------------------
;! (3) _read_ds1307                                          2     2      0      67
;!                                              1 COMRAM     2     2      0
;!                           _i2c_read
;!                      _i2c_rep_start
;!                          _i2c_start
;!                           _i2c_stop
;!                          _i2c_write
;! ---------------------------------------------------------------------------------
;! (4) _i2c_write                                            1     1      0      22
;!                                              0 COMRAM     1     1      0
;!                           _i2c_idle
;! ---------------------------------------------------------------------------------
;! (4) _i2c_stop                                             0     0      0       0
;!                           _i2c_idle
;! ---------------------------------------------------------------------------------
;! (4) _i2c_start                                            0     0      0       0
;!                           _i2c_idle
;! ---------------------------------------------------------------------------------
;! (4) _i2c_rep_start                                        0     0      0       0
;!                           _i2c_idle
;! ---------------------------------------------------------------------------------
;! (4) _i2c_read                                             0     0      0       0
;!                         _i2c_no_ack
;!                        _i2c_rx_mode
;! ---------------------------------------------------------------------------------
;! (5) _i2c_rx_mode                                          0     0      0       0
;!                           _i2c_idle
;! ---------------------------------------------------------------------------------
;! (5) _i2c_idle                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (5) _i2c_no_ack                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) _clcd_putch                                           2     1      1    3964
;!                                             14 COMRAM     2     1      1
;!                            ___awdiv (ARG)
;!                            ___awmod (ARG)
;!                            ___lwdiv (ARG)
;!                            ___lwmod (ARG)
;!                         _clcd_write
;! ---------------------------------------------------------------------------------
;! (3) _clcd_print                                           3     0      3    6495
;!                                              2 COMRAM     3     0      3
;!                         _clcd_write
;! ---------------------------------------------------------------------------------
;! (3) _clcd_write                                           2     1      1    1716
;!                                              0 COMRAM     2     1      1
;! ---------------------------------------------------------------------------------
;! (2) ___lwtoft                                             3     0      3    2864
;!                                              8 COMRAM     3     0      3
;!                           ___ftpack
;!                           _read_adc (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___fttol                                             15    11      4     328
;!                                             26 COMRAM    15    11      4
;!                            ___ftdiv (ARG)
;!                           ___lwtoft (ARG)
;!                           _read_adc (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___ftdiv                                             15     9      6    3326
;!                                             11 COMRAM    15     9      6
;!                           ___ftpack
;!                           ___lwtoft (ARG)
;!                           _read_adc (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___ftpack                                             8     3      5    2766
;!                                              0 COMRAM     8     3      5
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 5
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _dashboard
;!     ___ftdiv
;!       ___ftpack
;!       ___lwtoft (ARG)
;!         ___ftpack
;!         _read_adc (ARG)
;!       _read_adc (ARG)
;!     ___fttol
;!       ___ftdiv (ARG)
;!       ___lwtoft (ARG)
;!       _read_adc (ARG)
;!     ___lwdiv
;!     ___lwmod
;!     ___lwtoft
;!     _clcd_print
;!       _clcd_write
;!     _clcd_putch
;!       ___awdiv (ARG)
;!       ___awmod (ARG)
;!         ___awdiv (ARG)
;!       ___lwdiv (ARG)
;!       ___lwmod (ARG)
;!       _clcd_write (ARG)
;!     _clcd_write
;!     _get_time
;!       _read_ds1307
;!         _i2c_read
;!           _i2c_no_ack
;!           _i2c_rx_mode
;!             _i2c_idle
;!         _i2c_rep_start
;!           _i2c_idle
;!         _i2c_start
;!           _i2c_idle
;!         _i2c_stop
;!           _i2c_idle
;!         _i2c_write
;!           _i2c_idle
;!     _read_adc
;!     _read_switches
;!       _scan_key
;!     _store_event
;!       ___lwdiv
;!       ___lwmod
;!       _write_ext_eeprom
;!         _i2c_start1
;!           _i2c_idle1
;!         _i2c_stop1
;!           _i2c_idle1
;!         _i2c_write1
;!           _i2c_idle1
;!   _display_menu
;!     _clcd_print
;!     _clcd_putch
;!     _clcd_write
;!     _read_switches
;!   _init_config
;!     _init_adc
;!     _init_clcd
;!       _clcd_write
;!     _init_ds1307
;!       _read_ds1307
;!       _write_ds1307
;!         _i2c_start
;!         _i2c_stop
;!         _i2c_write
;!     _init_i2c
;!     _init_matrix_keypad
;!     _init_uart
;!   _password
;!     ___awdiv
;!     ___awmod
;!     _clcd_print
;!     _clcd_putch
;!     _clcd_write
;!     _read_ext_eeprom
;!       _i2c_read1
;!         _i2c_rx_mode1
;!           _i2c_idle1
;!       _i2c_rep_start1
;!         _i2c_idle1
;!       _i2c_start1
;!       _i2c_stop1
;!       _i2c_write1
;!     _read_switches
;!   _setting_log
;!     _change_password
;!       _clcd_print
;!       _clcd_putch
;!       _clcd_write
;!       _read_ext_eeprom
;!       _read_switches
;!       _strcmp
;!       _write_ext_eeprom
;!     _clear_log
;!       _clcd_print
;!       _clcd_write
;!     _download_log
;!       _clcd_print
;!       _clcd_write
;!       _puts
;!         _putch
;!       _read_ext_eeprom
;!     _set_time
;!       ___lwmod
;!       _clcd_print
;!       _clcd_putch
;!       _clcd_write
;!       _read_switches
;!       _write_ds1307
;!     _view_log
;!       _clcd_print
;!       _clcd_putch
;!       _clcd_write
;!       _read_ext_eeprom
;!       _read_switches
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             5FF      0       0      26        0.0%
;!BITBIGSFRll        281      0       0      24        0.0%
;!EEDATA             100      0       0       0        0.0%
;!BITBANK5           100      0       0      14        0.0%
;!BANK5              100      0       0      15        0.0%
;!BITBANK4           100      0       0      12        0.0%
;!BANK4              100      0       0      13        0.0%
;!BITBANK3           100      0       0      10        0.0%
;!BANK3              100      0       0      11        0.0%
;!BITBANK2           100      0       0       8        0.0%
;!BANK2              100      0       0       9        0.0%
;!BITBANK1           100      0       0       6        0.0%
;!BANK1              100      0      AA       7       66.4%
;!BITBANK0            A0      0       0       4        0.0%
;!BANK0               A0      0      89       5       85.6%
;!BITCOMRAM           5F      0       0       0        0.0%
;!COMRAM              5F     2A      5F       1      100.0%
;!BITBIGSFRhhhl       27      0       0      17        0.0%
;!BITBIGSFRlh          F      0       0      23        0.0%
;!BITBIGSFRhhhh        E      0       0      16        0.0%
;!BITBIGSFRhlhhl       9      0       0      20        0.0%
;!BITBIGSFRhlhhhl      8      0       0      19        0.0%
;!BITBIGSFRhlhhhh      7      0       0      18        0.0%
;!BITBIGSFRhll         7      0       0      22        0.0%
;!BITBIGSFRhlhl        2      0       0      21        0.0%
;!BIGSFR               0      0       0     200        0.0%
;!BITSFR_3             0      0       0     200        0.0%
;!SFR_3                0      0       0     200        0.0%
;!BITSFR_2             0      0       0     200        0.0%
;!SFR_2                0      0       0     200        0.0%
;!BITSFR_1             0      0       0     200        0.0%
;!SFR_1                0      0       0     200        0.0%
;!BITSFR               0      0       0     200        0.0%
;!SFR                  0      0       0     200        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0     192      25        0.0%
;!DATA                 0      0     192       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 629 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called: 6
;; This function calls:
;;		_dashboard
;;		_display_menu
;;		_init_config
;;		_password
;;		_setting_log
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2,group=0
	file	"main.c"
	line	629
global __ptext0
__ptext0:
psect	text0
	file	"main.c"
	line	629
	
_main:
;incstack = 0
	callstack 25
	line	630
	
l4176:
;main.c: 630: init_config();
	call	_init_config	;wreg free
	line	632
	
l4178:
;main.c: 632: if (flag == 0) {
	movf	((c:_flag))^00h,c,w
iorwf	((c:_flag+1))^00h,c,w
	btfss	status,2
	goto	u3631
	goto	u3630

u3631:
	goto	l4182
u3630:
	line	633
	
l4180:
;main.c: 633: dashboard();
	call	_dashboard	;wreg free
	line	634
;main.c: 634: } else if (flag == 1) {
	goto	l4178
	
l4182:
		decf	((c:_flag))^00h,c,w
iorwf	((c:_flag+1))^00h,c,w
	btfss	status,2
	goto	u3641
	goto	u3640

u3641:
	goto	l4186
u3640:
	line	635
	
l4184:
;main.c: 635: password();
	call	_password	;wreg free
	line	636
;main.c: 636: } else if (flag == 2) {
	goto	l4178
	
l4186:
		movlw	2
	xorwf	((c:_flag))^00h,c,w
iorwf	((c:_flag+1))^00h,c,w
	btfss	status,2
	goto	u3651
	goto	u3650

u3651:
	goto	l4190
u3650:
	line	637
	
l4188:
;main.c: 637: display_menu();
	call	_display_menu	;wreg free
	line	638
;main.c: 638: } else if (flag == 3) {
	goto	l4178
	
l4190:
		movlw	3
	xorwf	((c:_flag))^00h,c,w
iorwf	((c:_flag+1))^00h,c,w
	btfss	status,2
	goto	u3661
	goto	u3660

u3661:
	goto	l508
u3660:
	line	639
	
l4192:
;main.c: 639: setting_log();
	call	_setting_log	;wreg free
	goto	l4178
	line	641
	
l508:
	goto	l4178
	global	start
	goto	start
	callstack 0
	line	642
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_setting_log

;; *************** function _setting_log *****************
;; Defined at:
;;		line 596 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_change_password
;;		_clear_log
;;		_download_log
;;		_set_time
;;		_view_log
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2,group=0
	line	596
global __ptext1
__ptext1:
psect	text1
	file	"main.c"
	line	596
	
_setting_log:
;incstack = 0
	callstack 25
	line	597
	
l4160:
;main.c: 597: switch (log_flag) {
	goto	l4174
	line	600
	
l4162:
;main.c: 599: {;main.c: 600: view_log();
	call	_view_log	;wreg free
	line	601
;main.c: 601: break;
	goto	l501
	line	605
	
l4164:
;main.c: 604: {;main.c: 605: download_log();
	call	_download_log	;wreg free
	line	606
;main.c: 606: break;
	goto	l501
	line	610
	
l4166:
;main.c: 609: {;main.c: 610: clear_log();
	call	_clear_log	;wreg free
	line	611
;main.c: 611: break;
	goto	l501
	line	615
	
l4168:
;main.c: 614: {;main.c: 615: set_time();
	call	_set_time	;wreg free
	line	616
;main.c: 616: break;
	goto	l501
	line	620
	
l4170:
;main.c: 619: {;main.c: 620: change_password();
	call	_change_password	;wreg free
	line	621
;main.c: 621: break;
	goto	l501
	line	597
	
l4174:
	movf	((c:_log_flag))^00h,c,w
	; Switch size 1, requested type "simple"
; Number of cases is 5, Range of values is 0 to 4
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           16     9 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l4162
	xorlw	1^0	; case 1
	skipnz
	goto	l4164
	xorlw	2^1	; case 2
	skipnz
	goto	l4166
	xorlw	3^2	; case 3
	skipnz
	goto	l4168
	xorlw	4^3	; case 4
	skipnz
	goto	l4170
	goto	l501

	line	624
	
l501:
	return	;funcret
	callstack 0
GLOBAL	__end_of_setting_log
	__end_of_setting_log:
	signat	_setting_log,89
	global	_view_log

;; *************** function _view_log *****************
;; Defined at:
;;		line 206 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_clcd_print
;;		_clcd_putch
;;		_clcd_write
;;		_read_ext_eeprom
;;		_read_switches
;; This function is called by:
;;		_setting_log
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2,group=0
	line	206
global __ptext2
__ptext2:
psect	text2
	file	"main.c"
	line	206
	
_view_log:
;incstack = 0
	callstack 25
	line	208
	
l3474:
;main.c: 207: static unsigned int view_select1, view_select2 = 0, view_key;;main.c: 208: view_key = read_switches(0);
	movlw	(0)&0ffh
	
	call	_read_switches
	movwf	(??_view_log+0+0)^00h,c
	movf	((??_view_log+0+0))^00h,c,w
	movwf	((c:view_log@view_key))^00h,c
	clrf	((c:view_log@view_key+1))^00h,c
	line	209
	
l3476:
;main.c: 209: if (clear == 0) {
	movf	((c:_clear))^00h,c,w
iorwf	((c:_clear+1))^00h,c,w
	btfss	status,2
	goto	u2631
	goto	u2630

u2631:
	goto	l3502
u2630:
	line	210
	
l3478:
;main.c: 210: logs[log][0] = read_ext_eeprom((log * 10) + 0);
	movf	((c:_log))^00h,c,w
	mullw	011h
	movlw	low(_logs)
	addwf	(prodl)^0f00h,c,w
	movwf	c:fsr2l
	movlw	high(_logs)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	((c:_log))^00h,c,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	
	call	_read_ext_eeprom
	movwf	indf2,c

	line	211
;main.c: 211: logs[log][1] = read_ext_eeprom((log * 10) + 1);
	movf	((c:_log))^00h,c,w
	mullw	011h
	movlw	low(_logs+01h)
	addwf	(prodl)^0f00h,c,w
	movwf	c:fsr2l
	movlw	high(_logs+01h)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	((c:_log))^00h,c,w
	mullw	0Ah
	incf	(prodl)^0f00h,c,w
	
	call	_read_ext_eeprom
	movwf	indf2,c

	line	212
	
l3480:
;main.c: 212: logs[log][2] = ':';
	movf	((c:_log))^00h,c,w
	mullw	011h
	movlw	low(_logs+02h)
	addwf	(prodl)^0f00h,c,w
	movwf	c:fsr2l
	movlw	high(_logs+02h)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(03Ah)
	movwf	indf2
	line	214
	
l3482:
;main.c: 214: logs[log][3] = read_ext_eeprom((log * 10) + 2);
	movf	((c:_log))^00h,c,w
	mullw	011h
	movlw	low(_logs+03h)
	addwf	(prodl)^0f00h,c,w
	movwf	c:fsr2l
	movlw	high(_logs+03h)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	((c:_log))^00h,c,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addlw	low(02h)
	
	call	_read_ext_eeprom
	movwf	indf2,c

	line	215
	
l3484:
;main.c: 215: logs[log][4] = read_ext_eeprom((log * 10) + 3);
	movf	((c:_log))^00h,c,w
	mullw	011h
	movlw	low(_logs+04h)
	addwf	(prodl)^0f00h,c,w
	movwf	c:fsr2l
	movlw	high(_logs+04h)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	((c:_log))^00h,c,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addlw	low(03h)
	
	call	_read_ext_eeprom
	movwf	indf2,c

	line	216
	
l3486:
;main.c: 216: logs[log][5] = ':';
	movf	((c:_log))^00h,c,w
	mullw	011h
	movlw	low(_logs+05h)
	addwf	(prodl)^0f00h,c,w
	movwf	c:fsr2l
	movlw	high(_logs+05h)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(03Ah)
	movwf	indf2
	line	218
;main.c: 218: logs[log][6] = read_ext_eeprom((log * 10) + 4);
	movf	((c:_log))^00h,c,w
	mullw	011h
	movlw	low(_logs+06h)
	addwf	(prodl)^0f00h,c,w
	movwf	c:fsr2l
	movlw	high(_logs+06h)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	((c:_log))^00h,c,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addlw	low(04h)
	
	call	_read_ext_eeprom
	movwf	indf2,c

	line	219
;main.c: 219: logs[log][7] = read_ext_eeprom((log * 10) + 5);
	movf	((c:_log))^00h,c,w
	mullw	011h
	movlw	low(_logs+07h)
	addwf	(prodl)^0f00h,c,w
	movwf	c:fsr2l
	movlw	high(_logs+07h)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	((c:_log))^00h,c,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addlw	low(05h)
	
	call	_read_ext_eeprom
	movwf	indf2,c

	line	221
	
l3488:
;main.c: 221: logs[log][8] = ' ';
	movf	((c:_log))^00h,c,w
	mullw	011h
	movlw	low(_logs+08h)
	addwf	(prodl)^0f00h,c,w
	movwf	c:fsr2l
	movlw	high(_logs+08h)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(020h)
	movwf	indf2
	line	222
	
l3490:
;main.c: 222: logs[log][9] = read_ext_eeprom((log * 10) + 6);
	movf	((c:_log))^00h,c,w
	mullw	011h
	movlw	low(_logs+09h)
	addwf	(prodl)^0f00h,c,w
	movwf	c:fsr2l
	movlw	high(_logs+09h)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	((c:_log))^00h,c,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addlw	low(06h)
	
	call	_read_ext_eeprom
	movwf	indf2,c

	line	223
	
l3492:
;main.c: 223: logs[log][10] = read_ext_eeprom((log * 10) + 7);
	movf	((c:_log))^00h,c,w
	mullw	011h
	movlw	low(_logs+0Ah)
	addwf	(prodl)^0f00h,c,w
	movwf	c:fsr2l
	movlw	high(_logs+0Ah)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	((c:_log))^00h,c,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addlw	low(07h)
	
	call	_read_ext_eeprom
	movwf	indf2,c

	line	224
	
l3494:
;main.c: 224: logs[log][11] = ' ';
	movf	((c:_log))^00h,c,w
	mullw	011h
	movlw	low(_logs+0Bh)
	addwf	(prodl)^0f00h,c,w
	movwf	c:fsr2l
	movlw	high(_logs+0Bh)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(020h)
	movwf	indf2
	line	226
;main.c: 226: logs[log][12] = read_ext_eeprom((log * 10) + 8);
	movf	((c:_log))^00h,c,w
	mullw	011h
	movlw	low(_logs+0Ch)
	addwf	(prodl)^0f00h,c,w
	movwf	c:fsr2l
	movlw	high(_logs+0Ch)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	((c:_log))^00h,c,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addlw	low(08h)
	
	call	_read_ext_eeprom
	movwf	indf2,c

	line	227
;main.c: 227: logs[log][13] = read_ext_eeprom((log * 10) + 9);
	movf	((c:_log))^00h,c,w
	mullw	011h
	movlw	low(_logs+0Dh)
	addwf	(prodl)^0f00h,c,w
	movwf	c:fsr2l
	movlw	high(_logs+0Dh)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	((c:_log))^00h,c,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addlw	low(09h)
	
	call	_read_ext_eeprom
	movwf	indf2,c

	line	229
	
l3496:
;main.c: 229: clcd_print("Log           ", (0x80 + (0)));
		movlw	low(STR_15)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_15)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	230
	
l3498:
;main.c: 230: clcd_putch(log + 48, (0xC0 + (0)));
	movlw	low(0C0h)
	movwf	((c:clcd_putch@addr))^00h,c
	movf	((c:_log))^00h,c,w
	addlw	low(030h)
	
	call	_clcd_putch
	line	231
	
l3500:
;main.c: 231: clcd_print(logs[log], (0xC0 + (2)));
	movf	((c:_log))^00h,c,w
	mullw	011h
	movlw	low(_logs)
	addwf	(prodl)^0f00h,c,w
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(_logs)
	addwfc	prod+1,w
	movwf	1+((c:clcd_print@data))^00h,c
	movlw	low(0C2h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	234
	
l3502:
;main.c: 233: };main.c: 234: if (clear == 1) {
		decf	((c:_clear))^00h,c,w
iorwf	((c:_clear+1))^00h,c,w
	btfss	status,2
	goto	u2641
	goto	u2640

u2641:
	goto	l3512
u2640:
	line	235
	
l3504:
;main.c: 235: clcd_print("LOGS_ARE_CLEARED", (0x80 + (0)));
		movlw	low(STR_16)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_16)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	236
;main.c: 236: clcd_print("               ", (0xC0 + (0)));
		movlw	low(STR_17)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_17)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	237
;main.c: 237: for (static long int del = 800000; del--;);
	
l3506:
	movlw	0FFh
	movlb	0	; () banked
	addwf	((view_log@del))&0ffh
	movlw	0FFh
	addwfc	((view_log@del+1))&0ffh
	movlw	0FFh
	addwfc	((view_log@del+2))&0ffh
	movlw	0FFh
	addwfc	((view_log@del+3))&0ffh
		incf	((view_log@del))&0ffh,w
	bnz	u2651
	incf	((view_log@del+1))&0ffh,w
	bnz	u2651
	incf	((view_log@del+2))&0ffh,w
	bnz	u2651
	incf	((view_log@del+3))&0ffh,w
	btfss	status,2
	goto	u2651
	goto	u2650

u2651:
	goto	l3506
u2650:
	line	238
	
l3508:; BSR set to: 0

;main.c: 238: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	239
	
l3510:
;main.c: 239: flag = 2;
	movlw	high(02h)
	movwf	((c:_flag+1))^00h,c
	movlw	low(02h)
	movwf	((c:_flag))^00h,c
	line	241
	
l3512:
;main.c: 240: };main.c: 241: if (view_key == 5) {
		movlw	5
	xorwf	((c:view_log@view_key))^00h,c,w
iorwf	((c:view_log@view_key+1))^00h,c,w
	btfss	status,2
	goto	u2661
	goto	u2660

u2661:
	goto	l3516
u2660:
	line	242
	
l3514:
;main.c: 242: view_select1++;
	infsnz	((c:view_log@view_select1))^00h,c
	incf	((c:view_log@view_select1+1))^00h,c
	line	244
	
l3516:
;main.c: 243: };main.c: 244: if (view_key == 6) {
		movlw	6
	xorwf	((c:view_log@view_key))^00h,c,w
iorwf	((c:view_log@view_key+1))^00h,c,w
	btfss	status,2
	goto	u2671
	goto	u2670

u2671:
	goto	l3524
u2670:
	line	245
	
l3518:
;main.c: 245: view_select2++;
	infsnz	((c:view_log@view_select2))^00h,c
	incf	((c:view_log@view_select2+1))^00h,c
	line	246
	
l3520:
;main.c: 246: if (view_select2 > 200) {
		movf	((c:view_log@view_select2+1))^00h,c,w
	bnz	u2680
	movlw	201
	subwf	 ((c:view_log@view_select2))^00h,c,w
	btfss	status,0
	goto	u2681
	goto	u2680

u2681:
	goto	l3524
u2680:
	line	247
	
l3522:
;main.c: 247: flag = 2;
	movlw	high(02h)
	movwf	((c:_flag+1))^00h,c
	movlw	low(02h)
	movwf	((c:_flag))^00h,c
	line	248
;main.c: 248: view_select2 = 0;
	movlw	high(0)
	movwf	((c:view_log@view_select2+1))^00h,c
	movlw	low(0)
	movwf	((c:view_log@view_select2))^00h,c
	line	251
	
l3524:
;main.c: 249: };main.c: 250: };main.c: 251: if (view_select1 < 200 && view_select1 > 0 && view_key == 0xFF) {
		movf	((c:view_log@view_select1+1))^00h,c,w
	bnz	u2691
	movlw	200
	subwf	 ((c:view_log@view_select1))^00h,c,w
	btfsc	status,0
	goto	u2691
	goto	u2690

u2691:
	goto	l3536
u2690:
	
l3526:
	movf	((c:view_log@view_select1))^00h,c,w
iorwf	((c:view_log@view_select1+1))^00h,c,w
	btfsc	status,2
	goto	u2701
	goto	u2700

u2701:
	goto	l3536
u2700:
	
l3528:
		incf	((c:view_log@view_key))^00h,c,w
iorwf	((c:view_log@view_key+1))^00h,c,w
	btfss	status,2
	goto	u2711
	goto	u2710

u2711:
	goto	l3536
u2710:
	line	253
	
l3530:
;main.c: 253: view_select1 = 0;
	movlw	high(0)
	movwf	((c:view_log@view_select1+1))^00h,c
	movlw	low(0)
	movwf	((c:view_log@view_select1))^00h,c
	line	254
	
l3532:
;main.c: 254: if (log < 9)
		movlw	09h-0
	cpfslt	((c:_log))^00h,c
	goto	u2721
	goto	u2720

u2721:
	goto	l3542
u2720:
	line	255
	
l3534:
;main.c: 255: log++;
	incf	((c:_log))^00h,c
	goto	l3542
	line	256
	
l3536:
		movf	((c:view_log@view_select1+1))^00h,c,w
	bnz	u2730
	movlw	201
	subwf	 ((c:view_log@view_select1))^00h,c,w
	btfss	status,0
	goto	u2731
	goto	u2730

u2731:
	goto	l3542
u2730:
	
l3538:
		incf	((c:view_log@view_key))^00h,c,w
iorwf	((c:view_log@view_key+1))^00h,c,w
	btfss	status,2
	goto	u2741
	goto	u2740

u2741:
	goto	l3542
u2740:
	line	257
	
l3540:
;main.c: 257: view_select1 = 0;
	movlw	high(0)
	movwf	((c:view_log@view_select1+1))^00h,c
	movlw	low(0)
	movwf	((c:view_log@view_select1))^00h,c
	line	259
	
l3542:
;main.c: 258: };main.c: 259: if (view_select2 < 200 && view_select2 > 0 && view_key == 0xFF) {
		movf	((c:view_log@view_select2+1))^00h,c,w
	bnz	u2751
	movlw	200
	subwf	 ((c:view_log@view_select2))^00h,c,w
	btfsc	status,0
	goto	u2751
	goto	u2750

u2751:
	goto	l3552
u2750:
	
l3544:
	movf	((c:view_log@view_select2))^00h,c,w
iorwf	((c:view_log@view_select2+1))^00h,c,w
	btfsc	status,2
	goto	u2761
	goto	u2760

u2761:
	goto	l3552
u2760:
	
l3546:
		incf	((c:view_log@view_key))^00h,c,w
iorwf	((c:view_log@view_key+1))^00h,c,w
	btfss	status,2
	goto	u2771
	goto	u2770

u2771:
	goto	l3552
u2770:
	line	260
	
l3548:
;main.c: 260: view_select2 = 0;
	movlw	high(0)
	movwf	((c:view_log@view_select2+1))^00h,c
	movlw	low(0)
	movwf	((c:view_log@view_select2))^00h,c
	line	261
;main.c: 261: if (log >= 1)
	movf	((c:_log))^00h,c,w
	btfsc	status,2
	goto	u2781
	goto	u2780
u2781:
	goto	l3552
u2780:
	line	262
	
l3550:
;main.c: 262: log--;
	decf	((c:_log))^00h,c
	line	265
	
l3552:
;main.c: 264: };main.c: 265: if (view_select2 > 200 && view_key == 0xFF) {
		movf	((c:view_log@view_select2+1))^00h,c,w
	bnz	u2790
	movlw	201
	subwf	 ((c:view_log@view_select2))^00h,c,w
	btfss	status,0
	goto	u2791
	goto	u2790

u2791:
	goto	l377
u2790:
	
l3554:
		incf	((c:view_log@view_key))^00h,c,w
iorwf	((c:view_log@view_key+1))^00h,c,w
	btfss	status,2
	goto	u2801
	goto	u2800

u2801:
	goto	l377
u2800:
	line	266
	
l3556:
;main.c: 266: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	267
	
l3558:
;main.c: 267: flag = 2;
	movlw	high(02h)
	movwf	((c:_flag+1))^00h,c
	movlw	low(02h)
	movwf	((c:_flag))^00h,c
	line	268
	
l3560:
;main.c: 268: view_select2 = 0;
	movlw	high(0)
	movwf	((c:view_log@view_select2+1))^00h,c
	movlw	low(0)
	movwf	((c:view_log@view_select2))^00h,c
	line	271
	
l377:
	return	;funcret
	callstack 0
GLOBAL	__end_of_view_log
	__end_of_view_log:
	signat	_view_log,89
	global	_set_time

;; *************** function _set_time *****************
;; Defined at:
;;		line 37 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  blink           2   20[COMRAM] int 
;;  change_time     1   26[COMRAM] PTR unsigned char 
;;		 -> time(9), 
;;  set_time_key    1   25[COMRAM] unsigned char 
;;  sec             1   24[COMRAM] unsigned char 
;;  min             1   23[COMRAM] unsigned char 
;;  hour            1   22[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         7       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0
;;      Totals:        11       0       0       0       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		___lwmod
;;		_clcd_print
;;		_clcd_putch
;;		_clcd_write
;;		_read_switches
;;		_write_ds1307
;; This function is called by:
;;		_setting_log
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2,group=0
	line	37
global __ptext3
__ptext3:
psect	text3
	file	"main.c"
	line	37
	
_set_time:
;incstack = 0
	callstack 26
	line	38
	
l3278:
	movlw	low(0)
	movwf	((c:set_time@min))^00h,c
	movlw	low(0)
	movwf	((c:set_time@sec))^00h,c
	line	41
;main.c: 39: unsigned static change;;main.c: 40: static long int delay;;main.c: 41: int blink = 0;
	movlw	high(0)
	movwf	((c:set_time@blink+1))^00h,c
	movlw	low(0)
	movwf	((c:set_time@blink))^00h,c
	line	42
	
l3280:
;main.c: 42: unsigned char *change_time = time;
		movlw	low(_time)
	movwf	((c:set_time@change_time))^00h,c

	line	44
	
l3282:
;main.c: 43: unsigned static int val1 = 0, val2 = 0;;main.c: 44: unsigned char set_time_key = read_switches(0);
	movlw	(0)&0ffh
	
	call	_read_switches
	movwf	((c:set_time@set_time_key))^00h,c
	line	45
	
l3284:
;main.c: 45: clcd_print("ENTER NEW TIME", (0x80 + (0)));
		movlw	low(STR_7)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_7)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	46
	
l3286:
;main.c: 46: clcd_print(time, (0xC0 + (0)));
		movlw	low(_time)
	movwf	((c:clcd_print@data))^00h,c
	clrf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	47
;main.c: 47: switch (change) {
	goto	l3308
	line	49
	
l3288:
;main.c: 49: if (blink++ < 15000) {
	movf	((c:set_time@blink))^00h,c,w
	movwf	(??_set_time+0+0)^00h,c
	movf	((c:set_time@blink+1))^00h,c,w
	movwf	1+(??_set_time+0+0)^00h,c
	infsnz	((c:set_time@blink))^00h,c
	incf	((c:set_time@blink+1))^00h,c
	btfsc	(??_set_time+0+1)^00h,c,7
	goto	u2300
	movlw	152
	subwf	 (??_set_time+0+0)^00h,c,w
	movlw	58
	subwfb	(??_set_time+0+1)^00h,c,w
	btfsc	status,0
	goto	u2301
	goto	u2300

u2301:
	goto	l3292
u2300:
	line	50
	
l3290:
;main.c: 50: clcd_putch('_', (0xC0 + (0)));
	movlw	low(0C0h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(05Fh)&0ffh
	
	call	_clcd_putch
	line	51
;main.c: 51: clcd_putch('_', (0xC0 + (1)));
	movlw	low(0C1h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(05Fh)&0ffh
	
	call	_clcd_putch
	line	52
;main.c: 52: } else {
	goto	l3310
	line	53
	
l3292:
;main.c: 53: clcd_putch(' ', (0xC0 + (0)));
	movlw	low(0C0h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(020h)&0ffh
	
	call	_clcd_putch
	line	54
;main.c: 54: clcd_putch(' ', (0xC0 + (1)));
	movlw	low(0C1h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(020h)&0ffh
	
	call	_clcd_putch
	goto	l3310
	line	58
	
l3294:
;main.c: 58: if (delay++ < 15000) {
	movff	(c:set_time@delay),??_set_time+0+0+0
	movff	(c:set_time@delay+1),??_set_time+0+0+1
	movff	(c:set_time@delay+2),??_set_time+0+0+2
	movff	(c:set_time@delay+3),??_set_time+0+0+3
	incf	((c:set_time@delay))^00h,c
	movlw	0
	addwfc	((c:set_time@delay+1))^00h,c
	addwfc	((c:set_time@delay+2))^00h,c
	addwfc	((c:set_time@delay+3))^00h,c
	btfsc	(??_set_time+0+3)^00h,c,7
	goto	u2310
	movf	(??_set_time+0+3)^00h,c,w
	iorwf	(??_set_time+0+2)^00h,c,w
	bnz	u2311
	movlw	152
	subwf	 (??_set_time+0+0)^00h,c,w
	movlw	58
	subwfb	(??_set_time+0+1)^00h,c,w
	btfsc	status,0
	goto	u2311
	goto	u2310

u2311:
	goto	l3298
u2310:
	line	59
	
l3296:
;main.c: 59: clcd_putch('_', (0xC0 + (3)));
	movlw	low(0C3h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(05Fh)&0ffh
	
	call	_clcd_putch
	line	60
;main.c: 60: clcd_putch('_', (0xC0 + (4)));
	movlw	low(0C4h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(05Fh)&0ffh
	
	call	_clcd_putch
	line	61
;main.c: 61: } else {
	goto	l3310
	line	62
	
l3298:
;main.c: 62: clcd_putch(' ', (0xC0 + (3)));
	movlw	low(0C3h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(020h)&0ffh
	
	call	_clcd_putch
	line	63
;main.c: 63: clcd_putch(' ', (0xC0 + (4)));
	movlw	low(0C4h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(020h)&0ffh
	
	call	_clcd_putch
	goto	l3310
	line	67
	
l3300:
;main.c: 67: if (delay++ < 15000) {
	movff	(c:set_time@delay),??_set_time+0+0+0
	movff	(c:set_time@delay+1),??_set_time+0+0+1
	movff	(c:set_time@delay+2),??_set_time+0+0+2
	movff	(c:set_time@delay+3),??_set_time+0+0+3
	incf	((c:set_time@delay))^00h,c
	movlw	0
	addwfc	((c:set_time@delay+1))^00h,c
	addwfc	((c:set_time@delay+2))^00h,c
	addwfc	((c:set_time@delay+3))^00h,c
	btfsc	(??_set_time+0+3)^00h,c,7
	goto	u2320
	movf	(??_set_time+0+3)^00h,c,w
	iorwf	(??_set_time+0+2)^00h,c,w
	bnz	u2321
	movlw	152
	subwf	 (??_set_time+0+0)^00h,c,w
	movlw	58
	subwfb	(??_set_time+0+1)^00h,c,w
	btfsc	status,0
	goto	u2321
	goto	u2320

u2321:
	goto	l3304
u2320:
	line	68
	
l3302:
;main.c: 68: clcd_putch('_', (0xC0 + (6)));
	movlw	low(0C6h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(05Fh)&0ffh
	
	call	_clcd_putch
	line	69
;main.c: 69: clcd_putch('_', (0xC0 + (7)));
	movlw	low(0C7h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(05Fh)&0ffh
	
	call	_clcd_putch
	line	70
;main.c: 70: } else {
	goto	l3310
	line	71
	
l3304:
;main.c: 71: clcd_putch(' ', (0xC0 + (6)));
	movlw	low(0C6h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(020h)&0ffh
	
	call	_clcd_putch
	line	72
;main.c: 72: clcd_putch(' ', (0xC0 + (7)));
	movlw	low(0C7h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(020h)&0ffh
	
	call	_clcd_putch
	goto	l3310
	line	47
	
l3308:
	movff	(c:set_time@change),??_set_time+0+0
	movff	(c:set_time@change+1),??_set_time+0+0+1
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "simple"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
;	Chosen strategy is simple_byte

	movf ??_set_time+0+1^00h,c,w
	xorlw	0^0	; case 0
	skipnz
	goto	l4214
	goto	l3310
	
l4214:
; Switch size 1, requested type "simple"
; Number of cases is 3, Range of values is 0 to 2
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
;	Chosen strategy is simple_byte

	movf ??_set_time+0+0^00h,c,w
	xorlw	0^0	; case 0
	skipnz
	goto	l3288
	xorlw	1^0	; case 1
	skipnz
	goto	l3294
	xorlw	2^1	; case 2
	skipnz
	goto	l3300
	goto	l3310

	line	76
	
l3310:
;main.c: 76: if (set_time_key == 6) {
		movlw	6
	xorwf	((c:set_time@set_time_key))^00h,c,w
	btfss	status,2
	goto	u2331
	goto	u2330

u2331:
	goto	l3314
u2330:
	line	77
	
l3312:
;main.c: 77: val1++;
	infsnz	((c:set_time@val1))^00h,c
	incf	((c:set_time@val1+1))^00h,c
	line	79
	
l3314:
;main.c: 78: };main.c: 79: if (set_time_key == 5) {
		movlw	5
	xorwf	((c:set_time@set_time_key))^00h,c,w
	btfss	status,2
	goto	u2341
	goto	u2340

u2341:
	goto	l3318
u2340:
	line	80
	
l3316:
;main.c: 80: val2++;
	infsnz	((c:set_time@val2))^00h,c
	incf	((c:set_time@val2+1))^00h,c
	line	82
	
l3318:
;main.c: 81: };main.c: 82: if (val1 < 200 && val1 > 0 && set_time_key == 0xFF) {
		movf	((c:set_time@val1+1))^00h,c,w
	bnz	u2351
	movlw	200
	subwf	 ((c:set_time@val1))^00h,c,w
	btfsc	status,0
	goto	u2351
	goto	u2350

u2351:
	goto	l3330
u2350:
	
l3320:
	movf	((c:set_time@val1))^00h,c,w
iorwf	((c:set_time@val1+1))^00h,c,w
	btfsc	status,2
	goto	u2361
	goto	u2360

u2361:
	goto	l3330
u2360:
	
l3322:
		incf	((c:set_time@set_time_key))^00h,c,w
	btfss	status,2
	goto	u2371
	goto	u2370

u2371:
	goto	l3330
u2370:
	line	83
	
l3324:
;main.c: 83: val1 = 0;
	movlw	high(0)
	movwf	((c:set_time@val1+1))^00h,c
	movlw	low(0)
	movwf	((c:set_time@val1))^00h,c
	line	85
	
l3326:
;main.c: 85: change++;
	infsnz	((c:set_time@change))^00h,c
	incf	((c:set_time@change+1))^00h,c
	line	86
	
l3328:
;main.c: 86: change = change % 3;
	movff	(c:set_time@change),(c:___lwmod@dividend)
	movff	(c:set_time@change+1),(c:___lwmod@dividend+1)
	movlw	high(03h)
	movwf	((c:___lwmod@divisor+1))^00h,c
	movlw	low(03h)
	movwf	((c:___lwmod@divisor))^00h,c
	call	___lwmod	;wreg free
	movff	0+?___lwmod,(c:set_time@change)
	movff	1+?___lwmod,(c:set_time@change+1)
	line	87
;main.c: 87: } else if (val1 > 200 && set_time_key == 0xFF) {
	goto	l3336
	
l3330:
		movf	((c:set_time@val1+1))^00h,c,w
	bnz	u2380
	movlw	201
	subwf	 ((c:set_time@val1))^00h,c,w
	btfss	status,0
	goto	u2381
	goto	u2380

u2381:
	goto	l3336
u2380:
	
l3332:
		incf	((c:set_time@set_time_key))^00h,c,w
	btfss	status,2
	goto	u2391
	goto	u2390

u2391:
	goto	l3336
u2390:
	line	88
	
l3334:
;main.c: 88: val1 = 0;
	movlw	high(0)
	movwf	((c:set_time@val1+1))^00h,c
	movlw	low(0)
	movwf	((c:set_time@val1))^00h,c
	line	89
;main.c: 89: flag = 2;
	movlw	high(02h)
	movwf	((c:_flag+1))^00h,c
	movlw	low(02h)
	movwf	((c:_flag))^00h,c
	line	91
	
l3336:
;main.c: 90: };main.c: 91: if (val2 < 200 && val2 > 0 && set_time_key == 0xFF) {
		movf	((c:set_time@val2+1))^00h,c,w
	bnz	u2401
	movlw	200
	subwf	 ((c:set_time@val2))^00h,c,w
	btfsc	status,0
	goto	u2401
	goto	u2400

u2401:
	goto	l3372
u2400:
	
l3338:
	movf	((c:set_time@val2))^00h,c,w
iorwf	((c:set_time@val2+1))^00h,c,w
	btfsc	status,2
	goto	u2411
	goto	u2410

u2411:
	goto	l3372
u2410:
	
l3340:
		incf	((c:set_time@set_time_key))^00h,c,w
	btfss	status,2
	goto	u2421
	goto	u2420

u2421:
	goto	l3372
u2420:
	line	92
	
l3342:
;main.c: 92: val2 = 0;
	movlw	high(0)
	movwf	((c:set_time@val2+1))^00h,c
	movlw	low(0)
	movwf	((c:set_time@val2))^00h,c
	line	93
	
l3344:
;main.c: 93: if (change == 0) {
	movf	((c:set_time@change))^00h,c,w
iorwf	((c:set_time@change+1))^00h,c,w
	btfss	status,2
	goto	u2431
	goto	u2430

u2431:
	goto	l3356
u2430:
	line	94
	
l3346:
;main.c: 94: change_time[1]++;
	movf	((c:set_time@change_time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	incf	indf2

	line	95
;main.c: 95: if (change_time[1] > '9') {
	movf	((c:set_time@change_time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

		movlw	03Ah-1
	cpfsgt	indf2
	goto	u2441
	goto	u2440

u2441:
	goto	l311
u2440:
	line	96
	
l3348:
;main.c: 96: change_time[1] = '0';
	movf	((c:set_time@change_time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	movlw	low(030h)
	movwf	indf2
	line	97
;main.c: 97: change_time[0]++;
	movf	((c:set_time@change_time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	incf	indf2

	line	98
	
l311:
	line	99
;main.c: 98: };main.c: 99: if (change_time[0] == '2' && change_time[1] == '4') {
	movf	((c:set_time@change_time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	50
	xorwf	postinc2,w
	btfss	status,2
	goto	u2451
	goto	u2450

u2451:
	goto	l327
u2450:
	
l3350:
	movf	((c:set_time@change_time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	movlw	52
	xorwf	postinc2,w
	btfss	status,2
	goto	u2461
	goto	u2460

u2461:
	goto	l327
u2460:
	line	100
	
l3352:
;main.c: 100: change_time[0] = '0';
	movf	((c:set_time@change_time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(030h)
	movwf	indf2
	line	101
	
l3354:
;main.c: 101: change_time[1] = '0';
	movf	((c:set_time@change_time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	movlw	low(030h)
	movwf	indf2
	goto	l327
	line	104
	
l3356:
		decf	((c:set_time@change))^00h,c,w
iorwf	((c:set_time@change+1))^00h,c,w
	btfss	status,2
	goto	u2471
	goto	u2470

u2471:
	goto	l3364
u2470:
	line	105
	
l3358:
;main.c: 105: change_time[4]++;
	movf	((c:set_time@change_time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(04h)
	addwf	fsr2l

	incf	indf2

	line	106
;main.c: 106: if (change_time[4] > '9') {
	movf	((c:set_time@change_time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(04h)
	addwf	fsr2l

		movlw	03Ah-1
	cpfsgt	indf2
	goto	u2481
	goto	u2480

u2481:
	goto	l315
u2480:
	line	107
	
l3360:
;main.c: 107: change_time[4] = '0';
	movf	((c:set_time@change_time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(04h)
	addwf	fsr2l

	movlw	low(030h)
	movwf	indf2
	line	108
;main.c: 108: change_time[3]++;
	movf	((c:set_time@change_time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(03h)
	addwf	fsr2l

	incf	indf2

	line	109
	
l315:
	line	110
;main.c: 109: };main.c: 110: if (change_time[3] == '6') {
	movf	((c:set_time@change_time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(03h)
	addwf	fsr2l

	movlw	54
	xorwf	postinc2,w
	btfss	status,2
	goto	u2491
	goto	u2490

u2491:
	goto	l327
u2490:
	line	111
	
l3362:
;main.c: 111: change_time[3] = '0';
	movf	((c:set_time@change_time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(03h)
	addwf	fsr2l

	movlw	low(030h)
	movwf	indf2
	line	112
;main.c: 112: change_time[4] = '0';
	movf	((c:set_time@change_time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(04h)
	addwf	fsr2l

	movlw	low(030h)
	movwf	indf2
	goto	l327
	line	115
	
l3364:
		movlw	2
	xorwf	((c:set_time@change))^00h,c,w
iorwf	((c:set_time@change+1))^00h,c,w
	btfss	status,2
	goto	u2501
	goto	u2500

u2501:
	goto	l313
u2500:
	line	116
	
l3366:
;main.c: 116: change_time[7]++;
	movf	((c:set_time@change_time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(07h)
	addwf	fsr2l

	incf	indf2

	line	117
;main.c: 117: if (change_time[7] > '9') {
	movf	((c:set_time@change_time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(07h)
	addwf	fsr2l

		movlw	03Ah-1
	cpfsgt	indf2
	goto	u2511
	goto	u2510

u2511:
	goto	l319
u2510:
	line	118
	
l3368:
;main.c: 118: change_time[7] = '0';
	movf	((c:set_time@change_time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(07h)
	addwf	fsr2l

	movlw	low(030h)
	movwf	indf2
	line	119
;main.c: 119: change_time[6]++;
	movf	((c:set_time@change_time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(06h)
	addwf	fsr2l

	incf	indf2

	line	120
	
l319:
	line	121
;main.c: 120: };main.c: 121: if (change_time[6] == '6') {
	movf	((c:set_time@change_time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(06h)
	addwf	fsr2l

	movlw	54
	xorwf	postinc2,w
	btfss	status,2
	goto	u2521
	goto	u2520

u2521:
	goto	l327
u2520:
	line	122
	
l3370:
;main.c: 122: change_time[6] = '0';
	movf	((c:set_time@change_time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(06h)
	addwf	fsr2l

	movlw	low(030h)
	movwf	indf2
	line	123
;main.c: 123: change_time[7] = '0';
	movf	((c:set_time@change_time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(07h)
	addwf	fsr2l

	movlw	low(030h)
	movwf	indf2
	goto	l327
	line	126
	
l313:
;main.c: 124: };main.c: 125: };main.c: 126: } else if (val2 > 200 && set_time_key == 0xFF) {
	goto	l327
	
l3372:
		movf	((c:set_time@val2+1))^00h,c,w
	bnz	u2530
	movlw	201
	subwf	 ((c:set_time@val2))^00h,c,w
	btfss	status,0
	goto	u2531
	goto	u2530

u2531:
	goto	l327
u2530:
	
l3374:
		incf	((c:set_time@set_time_key))^00h,c,w
	btfss	status,2
	goto	u2541
	goto	u2540

u2541:
	goto	l327
u2540:
	line	127
	
l3376:
;main.c: 127: if (val2 > 200) {
		movf	((c:set_time@val2+1))^00h,c,w
	bnz	u2550
	movlw	201
	subwf	 ((c:set_time@val2))^00h,c,w
	btfss	status,0
	goto	u2551
	goto	u2550

u2551:
	goto	l327
u2550:
	line	128
	
l3378:
;main.c: 128: val2 = 0;
	movlw	high(0)
	movwf	((c:set_time@val2+1))^00h,c
	movlw	low(0)
	movwf	((c:set_time@val2))^00h,c
	line	129
	
l3380:
;main.c: 129: clcd_print("SET TIME SUCCESS", (0x80 + (0)));
		movlw	low(STR_8)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_8)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	130
	
l3382:
;main.c: 130: clcd_print("                  ", (0xC0 + (0)));
		movlw	low(STR_9)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_9)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	131
	
l3384:
;main.c: 131: hour = (change_time[0] - '0') << 4;
	movf	((c:set_time@change_time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	(??_set_time+0+0)^00h,c
	swapf	((??_set_time+0+0))^00h,c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:set_time@hour))^00h,c
	line	132
	
l3386:
;main.c: 132: hour = (change_time[1] - '0') | hour;
	movf	((c:set_time@change_time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	movf	indf2,w
	addlw	low(0D0h)
	iorwf	((c:set_time@hour))^00h,c,w
	movwf	((c:set_time@hour))^00h,c
	line	133
	
l3388:
;main.c: 133: write_ds1307(0x02, hour);
	movff	(c:set_time@hour),(c:write_ds1307@data)
	movlw	(02h)&0ffh
	
	call	_write_ds1307
	line	134
	
l3390:
;main.c: 134: min = (change_time[3] - '0') << 4;
	movf	((c:set_time@change_time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(03h)
	addwf	fsr2l

	movf	indf2,w
	movwf	(??_set_time+0+0)^00h,c
	swapf	((??_set_time+0+0))^00h,c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:set_time@min))^00h,c
	line	135
	
l3392:
;main.c: 135: min = (change_time[4] - '0') | min;
	movf	((c:set_time@change_time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(04h)
	addwf	fsr2l

	movf	indf2,w
	addlw	low(0D0h)
	iorwf	((c:set_time@min))^00h,c,w
	movwf	((c:set_time@min))^00h,c
	line	136
	
l3394:
;main.c: 136: write_ds1307(0x01, min);
	movff	(c:set_time@min),(c:write_ds1307@data)
	movlw	(01h)&0ffh
	
	call	_write_ds1307
	line	137
	
l3396:
;main.c: 137: sec = (change_time[6] - '0') << 4;
	movf	((c:set_time@change_time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(06h)
	addwf	fsr2l

	movf	indf2,w
	movwf	(??_set_time+0+0)^00h,c
	swapf	((??_set_time+0+0))^00h,c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:set_time@sec))^00h,c
	line	138
	
l3398:
;main.c: 138: sec = (change_time[7] - '0') | sec;
	movf	((c:set_time@change_time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(07h)
	addwf	fsr2l

	movf	indf2,w
	addlw	low(0D0h)
	iorwf	((c:set_time@sec))^00h,c,w
	movwf	((c:set_time@sec))^00h,c
	line	139
	
l3400:
;main.c: 139: write_ds1307(0x00, sec);
	movff	(c:set_time@sec),(c:write_ds1307@data)
	movlw	(0)&0ffh
	
	call	_write_ds1307
	line	140
	
l3402:
;main.c: 140: for (delay = 200000; delay--;);
	movlw	low(030D40h)
	movwf	((c:set_time@delay))^00h,c
	movlw	high(030D40h)
	movwf	((c:set_time@delay+1))^00h,c
	movlw	low highword(030D40h)
	movwf	((c:set_time@delay+2))^00h,c
	movlw	high highword(030D40h)
	movwf	((c:set_time@delay+3))^00h,c
	
l3404:
	movlw	0FFh
	addwf	((c:set_time@delay))^00h,c
	movlw	0FFh
	addwfc	((c:set_time@delay+1))^00h,c
	movlw	0FFh
	addwfc	((c:set_time@delay+2))^00h,c
	movlw	0FFh
	addwfc	((c:set_time@delay+3))^00h,c
		incf	((c:set_time@delay))^00h,c,w
	bnz	u2561
	incf	((c:set_time@delay+1))^00h,c,w
	bnz	u2561
	incf	((c:set_time@delay+2))^00h,c,w
	bnz	u2561
	incf	((c:set_time@delay+3))^00h,c,w
	btfss	status,2
	goto	u2561
	goto	u2560

u2561:
	goto	l3404
u2560:
	line	141
	
l3406:
;main.c: 141: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	143
	
l3408:
;main.c: 143: flag = 0;
	movlw	high(0)
	movwf	((c:_flag+1))^00h,c
	movlw	low(0)
	movwf	((c:_flag))^00h,c
	line	146
	
l327:
	return	;funcret
	callstack 0
GLOBAL	__end_of_set_time
	__end_of_set_time:
	signat	_set_time,89
	global	_download_log

;; *************** function _download_log *****************
;; Defined at:
;;		line 157 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   22[COMRAM] int 
;;  arr            17    5[COMRAM] unsigned char [17]
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:        19       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:        19       0       0       0       0       0       0
;;Total ram usage:       19 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_clcd_print
;;		_clcd_write
;;		_puts
;;		_read_ext_eeprom
;; This function is called by:
;;		_setting_log
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2,group=0
	line	157
global __ptext4
__ptext4:
psect	text4
	file	"main.c"
	line	157
	
_download_log:
;incstack = 0
	callstack 25
	line	158
	
l3414:
;main.c: 158: unsigned char arr[17] = {};
	lfsr	2,(download_log@arr)
	movlw	17-1
u2571:
	clrf	postinc2
	decf	wreg
	bc	u2571
	line	159
	
l3416:
;main.c: 159: if (clear == 0) {
	movf	((c:_clear))^00h,c,w
iorwf	((c:_clear+1))^00h,c,w
	btfss	status,2
	goto	u2581
	goto	u2580

u2581:
	goto	l3466
u2580:
	line	160
	
l3418:
;main.c: 160: puts("DOWNLOADED LOGS\n\r");
		movlw	low(STR_10)
	movwf	((c:puts@s))^00h,c
	movlw	high(STR_10)
	movwf	((c:puts@s+1))^00h,c

	call	_puts	;wreg free
	line	161
	
l3420:
;main.c: 161: for (int i = 0; i < 10; i++) {
	movlw	high(0)
	movwf	((c:download_log@i+1))^00h,c
	movlw	low(0)
	movwf	((c:download_log@i))^00h,c
	line	162
	
l3426:
;main.c: 162: arr[0] = read_ext_eeprom((i * 10) + 0);
	movf	((c:download_log@i))^00h,c,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	
	call	_read_ext_eeprom
	movwf	((c:download_log@arr))^00h,c
	line	163
;main.c: 163: arr[1] = read_ext_eeprom((i * 10) + 1);
	movf	((c:download_log@i))^00h,c,w
	mullw	0Ah
	incf	(prodl)^0f00h,c,w
	
	call	_read_ext_eeprom
	movwf	(0+((c:download_log@arr)+01h))^00h,c
	line	164
	
l3428:
;main.c: 164: arr[2] = ':';
	movlw	low(03Ah)
	movwf	(0+((c:download_log@arr)+02h))^00h,c
	line	166
	
l3430:
;main.c: 166: arr[3] = read_ext_eeprom((i * 10) + 2);
	movf	((c:download_log@i))^00h,c,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addlw	low(02h)
	
	call	_read_ext_eeprom
	movwf	(0+((c:download_log@arr)+03h))^00h,c
	line	167
	
l3432:
;main.c: 167: arr[4] = read_ext_eeprom((i * 10) + 3);
	movf	((c:download_log@i))^00h,c,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addlw	low(03h)
	
	call	_read_ext_eeprom
	movwf	(0+((c:download_log@arr)+04h))^00h,c
	line	168
	
l3434:
;main.c: 168: arr[5] = ':';
	movlw	low(03Ah)
	movwf	(0+((c:download_log@arr)+05h))^00h,c
	line	169
;main.c: 169: arr[6] = read_ext_eeprom((i * 10) + 4);
	movf	((c:download_log@i))^00h,c,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addlw	low(04h)
	
	call	_read_ext_eeprom
	movwf	(0+((c:download_log@arr)+06h))^00h,c
	line	170
;main.c: 170: arr[7] = read_ext_eeprom((i * 10) + 5);
	movf	((c:download_log@i))^00h,c,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addlw	low(05h)
	
	call	_read_ext_eeprom
	movwf	(0+((c:download_log@arr)+07h))^00h,c
	line	171
	
l3436:
;main.c: 171: arr[8] = ' ';
	movlw	low(020h)
	movwf	(0+((c:download_log@arr)+08h))^00h,c
	line	172
	
l3438:
;main.c: 172: arr[9] = ' ';
	movlw	low(020h)
	movwf	(0+((c:download_log@arr)+09h))^00h,c
	line	174
;main.c: 174: arr[10] = read_ext_eeprom((i * 10) + 6);
	movf	((c:download_log@i))^00h,c,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addlw	low(06h)
	
	call	_read_ext_eeprom
	movwf	(0+((c:download_log@arr)+0Ah))^00h,c
	line	175
;main.c: 175: arr[11] = read_ext_eeprom((i * 10) + 7);
	movf	((c:download_log@i))^00h,c,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addlw	low(07h)
	
	call	_read_ext_eeprom
	movwf	(0+((c:download_log@arr)+0Bh))^00h,c
	line	176
	
l3440:
;main.c: 176: arr[12] = ' ';
	movlw	low(020h)
	movwf	(0+((c:download_log@arr)+0Ch))^00h,c
	line	177
	
l3442:
;main.c: 177: arr[13] = read_ext_eeprom((i * 10) + 8);
	movf	((c:download_log@i))^00h,c,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addlw	low(08h)
	
	call	_read_ext_eeprom
	movwf	(0+((c:download_log@arr)+0Dh))^00h,c
	line	178
	
l3444:
;main.c: 178: arr[14] = read_ext_eeprom((i * 10) + 9);
	movf	((c:download_log@i))^00h,c,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addlw	low(09h)
	
	call	_read_ext_eeprom
	movwf	(0+((c:download_log@arr)+0Eh))^00h,c
	line	179
	
l3446:
;main.c: 179: puts("\n\r");
		movlw	low(STR_11)
	movwf	((c:puts@s))^00h,c
	movlw	high(STR_11)
	movwf	((c:puts@s+1))^00h,c

	call	_puts	;wreg free
	line	180
	
l3448:
;main.c: 180: puts(arr);
		movlw	low(download_log@arr)
	movwf	((c:puts@s))^00h,c
	clrf	((c:puts@s+1))^00h,c

	call	_puts	;wreg free
	line	161
	
l3450:
	infsnz	((c:download_log@i))^00h,c
	incf	((c:download_log@i+1))^00h,c
	
l3452:
	btfsc	((c:download_log@i+1))^00h,c,7
	goto	u2591
	movf	((c:download_log@i+1))^00h,c,w
	bnz	u2590
	movlw	10
	subwf	 ((c:download_log@i))^00h,c,w
	btfss	status,0
	goto	u2591
	goto	u2590

u2591:
	goto	l3426
u2590:
	line	182
	
l3454:
;main.c: 181: };main.c: 182: clcd_print("  DOWNLOADING  ", (0x80 + (0)));
		movlw	low(STR_12)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_12)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	183
;main.c: 183: for (static long int del = 200000; del--;);
	
l3456:
	movlw	0FFh
	movlb	0	; () banked
	addwf	((download_log@del))&0ffh
	movlw	0FFh
	addwfc	((download_log@del+1))&0ffh
	movlw	0FFh
	addwfc	((download_log@del+2))&0ffh
	movlw	0FFh
	addwfc	((download_log@del+3))&0ffh
		incf	((download_log@del))&0ffh,w
	bnz	u2601
	incf	((download_log@del+1))&0ffh,w
	bnz	u2601
	incf	((download_log@del+2))&0ffh,w
	bnz	u2601
	incf	((download_log@del+3))&0ffh,w
	btfss	status,2
	goto	u2601
	goto	u2600

u2601:
	goto	l3456
u2600:
	line	184
	
l3458:; BSR set to: 0

;main.c: 184: clcd_print("  DOWNLOADED  ", (0xC0 + (0)));
		movlw	low(STR_13)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_13)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	185
;main.c: 185: for (static long int del = 800000; del--;);
	
l3460:
	movlw	0FFh
	movlb	0	; () banked
	addwf	((download_log@el_269))&0ffh
	movlw	0FFh
	addwfc	((download_log@el_269+1))&0ffh
	movlw	0FFh
	addwfc	((download_log@el_269+2))&0ffh
	movlw	0FFh
	addwfc	((download_log@el_269+3))&0ffh
		incf	((download_log@el_269))&0ffh,w
	bnz	u2611
	incf	((download_log@el_269+1))&0ffh,w
	bnz	u2611
	incf	((download_log@el_269+2))&0ffh,w
	bnz	u2611
	incf	((download_log@el_269+3))&0ffh,w
	btfss	status,2
	goto	u2611
	goto	u2610

u2611:
	goto	l3460
u2610:
	line	186
	
l3462:; BSR set to: 0

;main.c: 186: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	187
	
l3464:
;main.c: 187: flag = 2;
	movlw	high(02h)
	movwf	((c:_flag+1))^00h,c
	movlw	low(02h)
	movwf	((c:_flag))^00h,c
	line	188
;main.c: 188: } else {
	goto	l351
	line	189
	
l3466:
;main.c: 189: clcd_print("LOGS_ARE_CLEARED", (0x80 + (0)));
		movlw	low(STR_14)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_14)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	190
;main.c: 190: for (static long int del = 800000; del--;);
	
l3468:
	movlw	0FFh
	movlb	0	; () banked
	addwf	((download_log@el_271))&0ffh
	movlw	0FFh
	addwfc	((download_log@el_271+1))&0ffh
	movlw	0FFh
	addwfc	((download_log@el_271+2))&0ffh
	movlw	0FFh
	addwfc	((download_log@el_271+3))&0ffh
		incf	((download_log@el_271))&0ffh,w
	bnz	u2621
	incf	((download_log@el_271+1))&0ffh,w
	bnz	u2621
	incf	((download_log@el_271+2))&0ffh,w
	bnz	u2621
	incf	((download_log@el_271+3))&0ffh,w
	btfss	status,2
	goto	u2621
	goto	u2620

u2621:
	goto	l3468
u2620:
	line	191
	
l3470:; BSR set to: 0

;main.c: 191: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	goto	l3464
	line	194
	
l351:
	return	;funcret
	callstack 0
GLOBAL	__end_of_download_log
	__end_of_download_log:
	signat	_download_log,89
	global	_puts

;; *************** function _puts *****************
;; Defined at:
;;		line 95 in file "UART.c"
;; Parameters:    Size  Location     Type
;;  s               2    1[COMRAM] PTR const unsigned char 
;;		 -> STR_11(3), STR_10(18), download_log@arr(17), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2    1[COMRAM] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_putch
;; This function is called by:
;;		_download_log
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2,group=0
	file	"UART.c"
	line	95
global __ptext5
__ptext5:
psect	text5
	file	"UART.c"
	line	95
	
_puts:
;incstack = 0
	callstack 27
	line	97
	
l3096:
;UART.c: 97: while(*s)
	goto	l3102
	line	99
	
l3098:
;UART.c: 98: {;UART.c: 99: putch(*s++);
	movff	(c:puts@s),tblptrl
	movff	(c:puts@s+1),tblptrh
	clrf	tblptru
	
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	u2027
	tblrd	*
	
	movf	tablat,w
	bra	u2020
u2027:
	movff	tblptrl,fsr0l
	movff	tblptrh,fsr0h
	movf	indf0,w
u2020:
	
	call	_putch
	
l3100:
	infsnz	((c:puts@s))^00h,c
	incf	((c:puts@s+1))^00h,c
	line	97
	
l3102:
	movff	(c:puts@s),tblptrl
	movff	(c:puts@s+1),tblptrh
	clrf	tblptru
	
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	u2037
	tblrd	*
	
	movf	tablat,w
	bra	u2030
u2037:
	movff	tblptrl,fsr0l
	movff	tblptrh,fsr0h
	movf	indf0,w
u2030:
	iorlw	0
	btfss	status,2
	goto	u2041
	goto	u2040
u2041:
	goto	l3098
u2040:
	line	103
	
l166:
	return	;funcret
	callstack 0
GLOBAL	__end_of_puts
	__end_of_puts:
	signat	_puts,4218
	global	_putch

;; *************** function _putch *****************
;; Defined at:
;;		line 84 in file "UART.c"
;; Parameters:    Size  Location     Type
;;  byte            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  byte            1    0[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_puts
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2,group=0
	line	84
global __ptext6
__ptext6:
psect	text6
	file	"UART.c"
	line	84
	
_putch:
;incstack = 0
	callstack 27
;putch@byte stored from wreg
	movwf	((c:putch@byte))^00h,c
	line	88
	
l2954:
	line	91
;UART.c: 88: while(!TXIF)
	
l157:
	line	88
	btfss	c:(31988/8),(31988)&7	;volatile
	goto	u1861
	goto	u1860
u1861:
	goto	l157
u1860:
	line	92
	
l2956:
;UART.c: 91: };UART.c: 92: TXREG = byte;
	movff	(c:putch@byte),(c:4013)	;volatile
	line	93
	
l160:
	return	;funcret
	callstack 0
GLOBAL	__end_of_putch
	__end_of_putch:
	signat	_putch,4217
	global	_clear_log

;; *************** function _clear_log *****************
;; Defined at:
;;		line 582 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_clcd_print
;;		_clcd_write
;; This function is called by:
;;		_setting_log
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2,group=0
	file	"main.c"
	line	582
global __ptext7
__ptext7:
psect	text7
	file	"main.c"
	line	582
	
_clear_log:
;incstack = 0
	callstack 27
	line	584
	
l3736:
;main.c: 584: clear = 1;
	movlw	high(01h)
	movwf	((c:_clear+1))^00h,c
	movlw	low(01h)
	movwf	((c:_clear))^00h,c
	line	585
	
l3738:
;main.c: 585: clcd_print("CLEARING LOGS", (0x80 + (0)));
		movlw	low(STR_32)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_32)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	586
	
l3740:
;main.c: 586: clcd_print("SUCCESSFUL", (0xC0 + (0)));
		movlw	low(STR_33)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_33)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	587
;main.c: 587: menu = 0;
	movlw	low(0)
	movwf	((c:_menu))^00h,c
	line	588
;main.c: 588: for (static long int de = 8000000; de--;);
	
l3742:
	movlw	0FFh
	movlb	0	; () banked
	addwf	((clear_log@de))&0ffh
	movlw	0FFh
	addwfc	((clear_log@de+1))&0ffh
	movlw	0FFh
	addwfc	((clear_log@de+2))&0ffh
	movlw	0FFh
	addwfc	((clear_log@de+3))&0ffh
		incf	((clear_log@de))&0ffh,w
	bnz	u3021
	incf	((clear_log@de+1))&0ffh,w
	bnz	u3021
	incf	((clear_log@de+2))&0ffh,w
	bnz	u3021
	incf	((clear_log@de+3))&0ffh,w
	btfss	status,2
	goto	u3021
	goto	u3020

u3021:
	goto	l3742
u3020:
	line	589
	
l3744:; BSR set to: 0

;main.c: 589: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	590
	
l3746:
;main.c: 590: flag = 2;
	movlw	high(02h)
	movwf	((c:_flag+1))^00h,c
	movlw	low(02h)
	movwf	((c:_flag))^00h,c
	line	591
	
l491:
	return	;funcret
	callstack 0
GLOBAL	__end_of_clear_log
	__end_of_clear_log:
	signat	_clear_log,89
	global	_change_password

;; *************** function _change_password *****************
;; Defined at:
;;		line 385 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  new_password    5   21[COMRAM] unsigned char [5]
;;  re_enter        5   16[COMRAM] unsigned char [5]
;;  h               1   27[COMRAM] unsigned char 
;;  key3            1   26[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:        12       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:        12       0       0       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_clcd_print
;;		_clcd_putch
;;		_clcd_write
;;		_read_ext_eeprom
;;		_read_switches
;;		_strcmp
;;		_write_ext_eeprom
;; This function is called by:
;;		_setting_log
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2,group=0
	line	385
global __ptext8
__ptext8:
psect	text8
	file	"main.c"
	line	385
	
_change_password:
;incstack = 0
	callstack 25
	line	391
	
l3618:
;main.c: 386: unsigned char new_password[5], key3;;main.c: 387: unsigned char re_enter[5], h;;main.c: 388: static unsigned char index1 = 0, index2 = 0;;main.c: 389: static long int delay;;main.c: 391: key3 = read_switches(1);
	movlw	(01h)&0ffh
	
	call	_read_switches
	movwf	((c:change_password@key3))^00h,c
	line	392
	
l3620:
;main.c: 392: if (index1 < 4) {
		movlw	04h-0
	cpfslt	((c:change_password@index1))^00h,c
	goto	u2851
	goto	u2850

u2851:
	goto	l3648
u2850:
	line	393
	
l3622:
;main.c: 393: clcd_print("ENTER PASSWORD", (0x80 + (0)));
		movlw	low(STR_19)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_19)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	394
	
l3624:
;main.c: 394: if (key3 == 5) {
		movlw	5
	xorwf	((c:change_password@key3))^00h,c,w
	btfss	status,2
	goto	u2861
	goto	u2860

u2861:
	goto	l3632
u2860:
	line	395
	
l3626:
;main.c: 395: new_password[index1] = '1';
	movf	((c:change_password@index1))^00h,c,w
	addlw	low(change_password@new_password)
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(031h)
	movwf	indf2
	line	396
	
l3628:
;main.c: 396: clcd_putch('*', (0xC0 + (index1)));
	movf	((c:change_password@index1))^00h,c,w
	addlw	low(0C0h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(02Ah)&0ffh
	
	call	_clcd_putch
	line	397
	
l3630:
;main.c: 397: index1++;
	incf	((c:change_password@index1))^00h,c
	line	398
;main.c: 398: } else if (key3 == 6) {
	goto	l3640
	
l3632:
		movlw	6
	xorwf	((c:change_password@key3))^00h,c,w
	btfss	status,2
	goto	u2871
	goto	u2870

u2871:
	goto	l3640
u2870:
	line	399
	
l3634:
;main.c: 399: new_password[index1] = '0';
	movf	((c:change_password@index1))^00h,c,w
	addlw	low(change_password@new_password)
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(030h)
	movwf	indf2
	line	400
	
l3636:
;main.c: 400: clcd_putch('*', (0xC0 + (index1)));
	movf	((c:change_password@index1))^00h,c,w
	addlw	low(0C0h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(02Ah)&0ffh
	
	call	_clcd_putch
	goto	l3630
	line	403
	
l3640:
;main.c: 402: };main.c: 403: if (index1 == 4) {
		movlw	4
	xorwf	((c:change_password@index1))^00h,c,w
	btfss	status,2
	goto	u2881
	goto	u2880

u2881:
	goto	l3734
u2880:
	line	404
	
l3642:
;main.c: 404: for (delay = 100000; delay--;);
	movlw	low(0186A0h)
	movwf	((c:change_password@delay))^00h,c
	movlw	high(0186A0h)
	movwf	((c:change_password@delay+1))^00h,c
	movlw	low highword(0186A0h)
	movwf	((c:change_password@delay+2))^00h,c
	movlw	high highword(0186A0h)
	movwf	((c:change_password@delay+3))^00h,c
	
l3644:
	movlw	0FFh
	addwf	((c:change_password@delay))^00h,c
	movlw	0FFh
	addwfc	((c:change_password@delay+1))^00h,c
	movlw	0FFh
	addwfc	((c:change_password@delay+2))^00h,c
	movlw	0FFh
	addwfc	((c:change_password@delay+3))^00h,c
		incf	((c:change_password@delay))^00h,c,w
	bnz	u2891
	incf	((c:change_password@delay+1))^00h,c,w
	bnz	u2891
	incf	((c:change_password@delay+2))^00h,c,w
	bnz	u2891
	incf	((c:change_password@delay+3))^00h,c,w
	btfss	status,2
	goto	u2891
	goto	u2890

u2891:
	goto	l3644
u2890:
	line	405
	
l3646:
;main.c: 405: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	goto	l3734
	line	407
	
l3648:
		movlw	4
	xorwf	((c:change_password@index1))^00h,c,w
	btfss	status,2
	goto	u2901
	goto	u2900

u2901:
	goto	l3734
u2900:
	line	408
	
l3650:
;main.c: 408: new_password[index1] = '\0';
	movf	((c:change_password@index1))^00h,c,w
	addlw	low(change_password@new_password)
	movwf	fsr2l
	clrf	fsr2h
	clrf	indf2
	line	409
	
l3652:
;main.c: 409: clcd_print("REENTER PASSWORD", (0x80 + (0)));
		movlw	low(STR_20)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_20)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	410
	
l3654:
;main.c: 410: if (index2 < 4) {
		movlw	04h-0
	cpfslt	((c:change_password@index2))^00h,c
	goto	u2911
	goto	u2910

u2911:
	goto	l3680
u2910:
	line	411
	
l3656:
;main.c: 411: if (key3 == 5) {
		movlw	5
	xorwf	((c:change_password@key3))^00h,c,w
	btfss	status,2
	goto	u2921
	goto	u2920

u2921:
	goto	l3664
u2920:
	line	412
	
l3658:
;main.c: 412: re_enter[index2] = '1';
	movf	((c:change_password@index2))^00h,c,w
	addlw	low(change_password@re_enter)
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(031h)
	movwf	indf2
	line	413
	
l3660:
;main.c: 413: clcd_putch('*', (0xC0 + (index2)));
	movf	((c:change_password@index2))^00h,c,w
	addlw	low(0C0h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(02Ah)&0ffh
	
	call	_clcd_putch
	line	414
	
l3662:
;main.c: 414: index2++;
	incf	((c:change_password@index2))^00h,c
	line	415
;main.c: 415: } else if (key3 == 6) {
	goto	l3672
	
l3664:
		movlw	6
	xorwf	((c:change_password@key3))^00h,c,w
	btfss	status,2
	goto	u2931
	goto	u2930

u2931:
	goto	l3672
u2930:
	line	416
	
l3666:
;main.c: 416: re_enter[index2] = '0';
	movf	((c:change_password@index2))^00h,c,w
	addlw	low(change_password@re_enter)
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(030h)
	movwf	indf2
	line	417
	
l3668:
;main.c: 417: clcd_putch('*', (0xC0 + (index2)));
	movf	((c:change_password@index2))^00h,c,w
	addlw	low(0C0h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(02Ah)&0ffh
	
	call	_clcd_putch
	goto	l3662
	line	420
	
l3672:
;main.c: 419: };main.c: 420: if (index2 == 4) {
		movlw	4
	xorwf	((c:change_password@index2))^00h,c,w
	btfss	status,2
	goto	u2941
	goto	u2940

u2941:
	goto	l3734
u2940:
	line	421
	
l3674:
;main.c: 421: for (delay = 100000; delay--;);
	movlw	low(0186A0h)
	movwf	((c:change_password@delay))^00h,c
	movlw	high(0186A0h)
	movwf	((c:change_password@delay+1))^00h,c
	movlw	low highword(0186A0h)
	movwf	((c:change_password@delay+2))^00h,c
	movlw	high highword(0186A0h)
	movwf	((c:change_password@delay+3))^00h,c
	
l3676:
	movlw	0FFh
	addwf	((c:change_password@delay))^00h,c
	movlw	0FFh
	addwfc	((c:change_password@delay+1))^00h,c
	movlw	0FFh
	addwfc	((c:change_password@delay+2))^00h,c
	movlw	0FFh
	addwfc	((c:change_password@delay+3))^00h,c
		incf	((c:change_password@delay))^00h,c,w
	bnz	u2951
	incf	((c:change_password@delay+1))^00h,c,w
	bnz	u2951
	incf	((c:change_password@delay+2))^00h,c,w
	bnz	u2951
	incf	((c:change_password@delay+3))^00h,c,w
	btfss	status,2
	goto	u2951
	goto	u2950

u2951:
	goto	l3676
u2950:
	line	422
	
l3678:
;main.c: 422: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	goto	l3734
	line	424
	
l3680:
		movlw	4
	xorwf	((c:change_password@index2))^00h,c,w
	btfss	status,2
	goto	u2961
	goto	u2960

u2961:
	goto	l3734
u2960:
	line	425
	
l3682:
;main.c: 425: re_enter[index2] = '\0';
	movf	((c:change_password@index2))^00h,c,w
	addlw	low(change_password@re_enter)
	movwf	fsr2l
	clrf	fsr2h
	clrf	indf2
	line	426
	
l3684:
;main.c: 426: if (!(strcmp(new_password, re_enter))) {
		movlw	low(change_password@new_password)
	movwf	((c:strcmp@s1))^00h,c

		movlw	low(change_password@re_enter)
	movwf	((c:strcmp@s2))^00h,c

	call	_strcmp	;wreg free
	movf	(0+?_strcmp)^00h,c,w
iorwf	(1+?_strcmp)^00h,c,w
	btfss	status,2
	goto	u2971
	goto	u2970

u2971:
	goto	l3720
u2970:
	line	428
	
l3686:
;main.c: 428: clcd_print("SET PASSWORD    ", (0x80 + (0)));
		movlw	low(STR_21)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_21)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	429
;main.c: 429: clcd_print("SUCCESSFUL    ", (0xC0 + (0)));
		movlw	low(STR_22)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_22)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	430
	
l3688:
;main.c: 430: for (h = 0; h < 4; h++) {
	movlw	low(0)
	movwf	((c:change_password@h))^00h,c
	line	431
	
l3694:
;main.c: 431: write_ext_eeprom(200 + h, new_password[h]);
	movf	((c:change_password@h))^00h,c,w
	addlw	low(change_password@new_password)
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	((c:write_ext_eeprom@data1))^00h,c
	movf	((c:change_password@h))^00h,c,w
	addlw	low(0C8h)
	
	call	_write_ext_eeprom
	line	430
	
l3696:
	incf	((c:change_password@h))^00h,c
	
l3698:
		movlw	04h-1
	cpfsgt	((c:change_password@h))^00h,c
	goto	u2981
	goto	u2980

u2981:
	goto	l3694
u2980:
	line	433
	
l3700:
;main.c: 432: };main.c: 433: for (l = 0; l < 4; l++) {
	movlw	high(0)
	movwf	((c:_l+1))^00h,c
	movlw	low(0)
	movwf	((c:_l))^00h,c
	
l3702:
		movf	((c:_l+1))^00h,c,w
	bnz	u2990
	movlw	4
	subwf	 ((c:_l))^00h,c,w
	btfss	status,0
	goto	u2991
	goto	u2990

u2991:
	goto	l3706
u2990:
	goto	l3712
	line	434
	
l3706:
;main.c: 434: pass[l] = read_ext_eeprom(200 + l);
	movf	((c:_l))^00h,c,w
	addlw	low(_pass)
	movwf	fsr2l
	clrf	fsr2h
	movf	((c:_l))^00h,c,w
	addlw	low(0C8h)
	
	call	_read_ext_eeprom
	movwf	indf2,c

	line	433
	
l3708:
	infsnz	((c:_l))^00h,c
	incf	((c:_l+1))^00h,c
	goto	l3702
	line	436
	
l3712:
;main.c: 435: };main.c: 436: pass[4] = '\0';
	movlw	low(0)
	movlb	0	; () banked
	movwf	(0+(_pass+04h))&0ffh
	line	437
;main.c: 437: for (delay = 800000; delay--;);
	movlw	low(0C3500h)
	movwf	((c:change_password@delay))^00h,c
	movlw	high(0C3500h)
	movwf	((c:change_password@delay+1))^00h,c
	movlw	low highword(0C3500h)
	movwf	((c:change_password@delay+2))^00h,c
	movlw	high highword(0C3500h)
	movwf	((c:change_password@delay+3))^00h,c
	
l3714:
	movlw	0FFh
	addwf	((c:change_password@delay))^00h,c
	movlw	0FFh
	addwfc	((c:change_password@delay+1))^00h,c
	movlw	0FFh
	addwfc	((c:change_password@delay+2))^00h,c
	movlw	0FFh
	addwfc	((c:change_password@delay+3))^00h,c
		incf	((c:change_password@delay))^00h,c,w
	bnz	u3001
	incf	((c:change_password@delay+1))^00h,c,w
	bnz	u3001
	incf	((c:change_password@delay+2))^00h,c,w
	bnz	u3001
	incf	((c:change_password@delay+3))^00h,c,w
	btfss	status,2
	goto	u3001
	goto	u3000

u3001:
	goto	l3714
u3000:
	line	438
	
l3716:
;main.c: 438: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	439
	
l3718:
;main.c: 439: flag = 0;
	movlw	high(0)
	movwf	((c:_flag+1))^00h,c
	movlw	low(0)
	movwf	((c:_flag))^00h,c
	line	440
;main.c: 440: } else {
	goto	l3734
	line	441
	
l3720:
;main.c: 441: clcd_print("SET PASSWORD", (0x80 + (0)));
		movlw	low(STR_23)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_23)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	442
;main.c: 442: clcd_print("FAILURE", (0xC0 + (0)));
		movlw	low(STR_24)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_24)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	443
	
l3722:
;main.c: 443: index1 = 0;
	movlw	low(0)
	movwf	((c:change_password@index1))^00h,c
	line	444
	
l3724:
;main.c: 444: index2 = 0;
	movlw	low(0)
	movwf	((c:change_password@index2))^00h,c
	line	445
	
l3726:
;main.c: 445: for (delay = 800000; delay--;);
	movlw	low(0C3500h)
	movwf	((c:change_password@delay))^00h,c
	movlw	high(0C3500h)
	movwf	((c:change_password@delay+1))^00h,c
	movlw	low highword(0C3500h)
	movwf	((c:change_password@delay+2))^00h,c
	movlw	high highword(0C3500h)
	movwf	((c:change_password@delay+3))^00h,c
	
l3728:
	movlw	0FFh
	addwf	((c:change_password@delay))^00h,c
	movlw	0FFh
	addwfc	((c:change_password@delay+1))^00h,c
	movlw	0FFh
	addwfc	((c:change_password@delay+2))^00h,c
	movlw	0FFh
	addwfc	((c:change_password@delay+3))^00h,c
		incf	((c:change_password@delay))^00h,c,w
	bnz	u3011
	incf	((c:change_password@delay+1))^00h,c,w
	bnz	u3011
	incf	((c:change_password@delay+2))^00h,c,w
	bnz	u3011
	incf	((c:change_password@delay+3))^00h,c,w
	btfss	status,2
	goto	u3011
	goto	u3010

u3011:
	goto	l3728
u3010:
	line	446
	
l3730:
;main.c: 446: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	447
	
l3732:
;main.c: 447: flag = 2;
	movlw	high(02h)
	movwf	((c:_flag+1))^00h,c
	movlw	low(02h)
	movwf	((c:_flag))^00h,c
	line	452
	
l3734:
;main.c: 448: };main.c: 450: };main.c: 451: };main.c: 452: menu = 0;
	movlw	low(0)
	movwf	((c:_menu))^00h,c
	line	454
	
l439:
	return	;funcret
	callstack 0
GLOBAL	__end_of_change_password
	__end_of_change_password:
	signat	_change_password,89
	global	_strcmp

;; *************** function _strcmp *****************
;; Defined at:
;;		line 33 in file "C:\Program Files\Microchip\xc8\v2.41\pic\sources\c90\common\strcmp.c"
;; Parameters:    Size  Location     Type
;;  s1              1    0[COMRAM] PTR const unsigned char 
;;		 -> change_password@new_password(5), 
;;  s2              1    1[COMRAM] PTR const unsigned char 
;;		 -> change_password@re_enter(5), 
;; Auto vars:     Size  Location     Type
;;  r               1    4[COMRAM] char 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_change_password
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2,group=2
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c90\common\strcmp.c"
	line	33
global __ptext9
__ptext9:
psect	text9
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c90\common\strcmp.c"
	line	33
	
_strcmp:
;incstack = 0
	callstack 28
	line	37
	
l3170:
	goto	l3174
	line	38
	
l3172:
	incf	((c:strcmp@s1))^00h,c
	line	39
	incf	((c:strcmp@s2))^00h,c
	line	37
	
l3174:
	movf	((c:strcmp@s2))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	(??_strcmp+0+0)^00h,c
	movf	((c:strcmp@s1))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	(??_strcmp+1+0)^00h,c
	movf	((??_strcmp+0+0))^00h,c,w
	subwf	((??_strcmp+1+0))^00h,c,w
	movwf	((c:strcmp@r))^00h,c
	movf	((c:strcmp@r))^00h,c,w
	btfss	status,2
	goto	u2141
	goto	u2140
u2141:
	goto	l3178
u2140:
	
l3176:
	movf	((c:strcmp@s1))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	btfss	status,2
	goto	u2151
	goto	u2150
u2151:
	goto	l3172
u2150:
	line	41
	
l3178:
	movf	((c:strcmp@r))^00h,c,w
	movwf	((c:?_strcmp))^00h,c
	clrf	((c:?_strcmp+1))^00h,c
	btfsc	((c:?_strcmp))^00h,c,7
	decf	((c:?_strcmp+1))^00h,c
	line	42
	
l1516:
	return	;funcret
	callstack 0
GLOBAL	__end_of_strcmp
	__end_of_strcmp:
	signat	_strcmp,8314
	global	_password

;; *************** function _password *****************
;; Defined at:
;;		line 464 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  de              4   28[COMRAM] unsigned long 
;;  delay2          4   24[COMRAM] unsigned long 
;;  delay2          4   18[COMRAM] unsigned long 
;;  x               2   34[COMRAM] int 
;;  z               2   36[COMRAM] int 
;;  i               2   38[COMRAM] unsigned int 
;;  T               2   32[COMRAM] unsigned int 
;;  blink           2   22[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  2  441[None  ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:        22       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:        24       0       0       0       0       0       0
;;Total ram usage:       24 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		___awdiv
;;		___awmod
;;		_clcd_print
;;		_clcd_putch
;;		_clcd_write
;;		_read_ext_eeprom
;;		_read_switches
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,class=CODE,space=0,reloc=2,group=0
	file	"main.c"
	line	464
global __ptext10
__ptext10:
psect	text10
	file	"main.c"
	line	464
	
_password:
;incstack = 0
	callstack 26
	line	465
	
l3976:
;main.c: 465: unsigned int i = 0, T = 3;
	movlw	high(0)
	movwf	((c:password@i+1))^00h,c
	movlw	low(0)
	movwf	((c:password@i))^00h,c
	movlw	high(03h)
	movwf	((c:password@T+1))^00h,c
	movlw	low(03h)
	movwf	((c:password@T))^00h,c
	line	466
;main.c: 466: int blink = 0;
	movlw	high(0)
	movwf	((c:password@blink+1))^00h,c
	movlw	low(0)
	movwf	((c:password@blink))^00h,c
	line	467
;main.c: 467: while (T != 0) {
	goto	l4070
	line	468
	
l3978:
;main.c: 468: clcd_print("ENTER PASSWORD", (0x80 + (0)));
		movlw	low(STR_25)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_25)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	469
	
l3980:
;main.c: 469: key = read_switches(1);
	movlw	(01h)&0ffh
	
	call	_read_switches
	movwf	((c:_key))^00h,c
	line	471
	
l3982:
;main.c: 471: if (blink++ < 15000) {
	movf	((c:password@blink))^00h,c,w
	movwf	(??_password+0+0)^00h,c
	movf	((c:password@blink+1))^00h,c,w
	movwf	1+(??_password+0+0)^00h,c
	infsnz	((c:password@blink))^00h,c
	incf	((c:password@blink+1))^00h,c
	btfsc	(??_password+0+1)^00h,c,7
	goto	u3340
	movlw	152
	subwf	 (??_password+0+0)^00h,c,w
	movlw	58
	subwfb	(??_password+0+1)^00h,c,w
	btfsc	status,0
	goto	u3341
	goto	u3340

u3341:
	goto	l3986
u3340:
	line	472
	
l3984:
;main.c: 472: clcd_putch('_', (0xC0 + (i)));
	movf	((c:password@i))^00h,c,w
	addlw	low(0C0h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(05Fh)&0ffh
	
	call	_clcd_putch
	line	473
;main.c: 473: } else {
	goto	l3988
	line	474
	
l3986:
;main.c: 474: clcd_putch(' ', (0xC0 + (i)));
	movf	((c:password@i))^00h,c,w
	addlw	low(0C0h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(020h)&0ffh
	
	call	_clcd_putch
	line	476
	
l3988:
;main.c: 475: };main.c: 476: if (key == 5) {
		movlw	5
	xorwf	((c:_key))^00h,c,w
	btfss	status,2
	goto	u3351
	goto	u3350

u3351:
	goto	l3996
u3350:
	line	477
	
l3990:
;main.c: 477: in_pass[i] = '1';
	movf	((c:password@i))^00h,c,w
	addlw	low(_in_pass)
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(031h)
	movwf	indf2
	line	478
	
l3992:
;main.c: 478: clcd_putch('*', (0xC0 + (i)));
	movf	((c:password@i))^00h,c,w
	addlw	low(0C0h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(02Ah)&0ffh
	
	call	_clcd_putch
	line	479
	
l3994:
;main.c: 479: i++;
	infsnz	((c:password@i))^00h,c
	incf	((c:password@i+1))^00h,c
	line	480
;main.c: 480: } else if (key == 6) {
	goto	l4004
	
l3996:
		movlw	6
	xorwf	((c:_key))^00h,c,w
	btfss	status,2
	goto	u3361
	goto	u3360

u3361:
	goto	l4004
u3360:
	line	481
	
l3998:
;main.c: 481: in_pass[i] = '0';
	movf	((c:password@i))^00h,c,w
	addlw	low(_in_pass)
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(030h)
	movwf	indf2
	line	482
	
l4000:
;main.c: 482: clcd_putch('*', (0xC0 + (i)));
	movf	((c:password@i))^00h,c,w
	addlw	low(0C0h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(02Ah)&0ffh
	
	call	_clcd_putch
	goto	l3994
	line	486
	
l4004:
;main.c: 484: };main.c: 486: if (i == 4) {
		movlw	4
	xorwf	((c:password@i))^00h,c,w
iorwf	((c:password@i+1))^00h,c,w
	btfss	status,2
	goto	u3371
	goto	u3370

u3371:
	goto	l4070
u3370:
	line	487
	
l4006:
;main.c: 487: in_pass[i] = '\0';
	movf	((c:password@i))^00h,c,w
	addlw	low(_in_pass)
	movwf	fsr2l
	clrf	fsr2h
	clrf	indf2
	line	488
	
l4008:
;main.c: 488: for (l = 0; l < 4; l++) {
	movlw	high(0)
	movwf	((c:_l+1))^00h,c
	movlw	low(0)
	movwf	((c:_l))^00h,c
	
l4010:
		movf	((c:_l+1))^00h,c,w
	bnz	u3380
	movlw	4
	subwf	 ((c:_l))^00h,c,w
	btfss	status,0
	goto	u3381
	goto	u3380

u3381:
	goto	l4014
u3380:
	goto	l4020
	line	489
	
l4014:
;main.c: 489: pass[l] = read_ext_eeprom(200 + l);
	movf	((c:_l))^00h,c,w
	addlw	low(_pass)
	movwf	fsr2l
	clrf	fsr2h
	movf	((c:_l))^00h,c,w
	addlw	low(0C8h)
	
	call	_read_ext_eeprom
	movwf	indf2,c

	line	488
	
l4016:
	infsnz	((c:_l))^00h,c
	incf	((c:_l+1))^00h,c
	goto	l4010
	line	491
	
l4020:
;main.c: 490: };main.c: 491: for (int x = 0; x < 4; x++) {
	movlw	high(0)
	movwf	((c:password@x+1))^00h,c
	movlw	low(0)
	movwf	((c:password@x))^00h,c
	line	492
	
l4026:
;main.c: 492: if (in_pass[x] == pass[x]) {
	movf	((c:password@x))^00h,c,w
	addlw	low(_pass)
	movwf	fsr2l
	clrf	fsr2h
	movf	((c:password@x))^00h,c,w
	addlw	low(_in_pass)
	movwf	fsr1l
	clrf	fsr1h
	movf	postinc2,w
xorwf	postinc1,w
	btfss	status,2
	goto	u3391
	goto	u3390

u3391:
	goto	l4030
u3390:
	line	493
	
l4028:
;main.c: 493: equal++;
	infsnz	((c:_equal))^00h,c
	incf	((c:_equal+1))^00h,c
	line	494
;main.c: 494: } else {
	goto	l4032
	line	495
	
l4030:
;main.c: 495: equal = 0;
	movlw	high(0)
	movwf	((c:_equal+1))^00h,c
	movlw	low(0)
	movwf	((c:_equal))^00h,c
	line	491
	
l4032:
	infsnz	((c:password@x))^00h,c
	incf	((c:password@x+1))^00h,c
	
l4034:
	btfsc	((c:password@x+1))^00h,c,7
	goto	u3401
	movf	((c:password@x+1))^00h,c,w
	bnz	u3400
	movlw	4
	subwf	 ((c:password@x))^00h,c,w
	btfss	status,0
	goto	u3401
	goto	u3400

u3401:
	goto	l4026
u3400:
	line	498
	
l4036:
;main.c: 496: };main.c: 497: };main.c: 498: if (equal >= 4) {
	btfsc	((c:_equal+1))^00h,c,7
	goto	u3411
	movf	((c:_equal+1))^00h,c,w
	bnz	u3410
	movlw	4
	subwf	 ((c:_equal))^00h,c,w
	btfss	status,0
	goto	u3411
	goto	u3410

u3411:
	goto	l4050
u3410:
	line	499
	
l4038:
;main.c: 499: clcd_print("SUCCESSFUL", (0xC0 + (0)));
		movlw	low(STR_26)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_26)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	500
	
l4040:
;main.c: 500: for (unsigned long int delay2 = 1000000; delay2--;);
	movlw	low(0F4240h)
	movwf	((c:password@delay2))^00h,c
	movlw	high(0F4240h)
	movwf	((c:password@delay2+1))^00h,c
	movlw	low highword(0F4240h)
	movwf	((c:password@delay2+2))^00h,c
	movlw	high highword(0F4240h)
	movwf	((c:password@delay2+3))^00h,c
	
l4042:
	decf	((c:password@delay2))^00h,c
	movlw	0
	subwfb	((c:password@delay2+1))^00h,c
	subwfb	((c:password@delay2+2))^00h,c
	subwfb	((c:password@delay2+3))^00h,c
		incf	((c:password@delay2))^00h,c,w
	bnz	u3421
	incf	((c:password@delay2+1))^00h,c,w
	bnz	u3421
	incf	((c:password@delay2+2))^00h,c,w
	bnz	u3421
	incf	((c:password@delay2+3))^00h,c,w
	btfss	status,2
	goto	u3421
	goto	u3420

u3421:
	goto	l4042
u3420:
	line	501
	
l4044:
;main.c: 501: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	502
	
l4046:
;main.c: 502: flag = 2;
	movlw	high(02h)
	movwf	((c:_flag+1))^00h,c
	movlw	low(02h)
	movwf	((c:_flag))^00h,c
	line	503
;main.c: 503: break;
	goto	l4072
	line	506
	
l4050:
;main.c: 506: i = 0;
	movlw	high(0)
	movwf	((c:password@i+1))^00h,c
	movlw	low(0)
	movwf	((c:password@i))^00h,c
	line	507
	
l4052:
;main.c: 507: if (--T == 0) {
	decf	((c:password@T))^00h,c
	btfss	status,0
	decf	((c:password@T+1))^00h,c
	movf	((c:password@T))^00h,c,w
iorwf	((c:password@T+1))^00h,c,w
	btfss	status,2
	goto	u3431
	goto	u3430

u3431:
	goto	l4056
u3430:
	line	508
	
l4054:
;main.c: 508: flag = 10;
	movlw	high(0Ah)
	movwf	((c:_flag+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:_flag))^00h,c
	line	509
;main.c: 509: break;
	goto	l4072
	line	511
	
l4056:
;main.c: 510: };main.c: 511: clcd_putch(('0' + T), (0xC0 + (0)));
	movlw	low(0C0h)
	movwf	((c:clcd_putch@addr))^00h,c
	movf	((c:password@T))^00h,c,w
	addlw	low(030h)
	
	call	_clcd_putch
	line	513
	
l4058:
;main.c: 513: clcd_print(" Attempt left ", (0xC0 + (1)));
		movlw	low(STR_27)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_27)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C1h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	515
	
l4060:
;main.c: 515: for (unsigned long int delay2 = 1000000; delay2 > 0; delay2--);
	movlw	low(0F4240h)
	movwf	((c:password@delay2_310))^00h,c
	movlw	high(0F4240h)
	movwf	((c:password@delay2_310+1))^00h,c
	movlw	low highword(0F4240h)
	movwf	((c:password@delay2_310+2))^00h,c
	movlw	high highword(0F4240h)
	movwf	((c:password@delay2_310+3))^00h,c
	
l4066:
	decf	((c:password@delay2_310))^00h,c
	movlw	0
	subwfb	((c:password@delay2_310+1))^00h,c
	subwfb	((c:password@delay2_310+2))^00h,c
	subwfb	((c:password@delay2_310+3))^00h,c
	movf	((c:password@delay2_310))^00h,c,w
iorwf	((c:password@delay2_310+1))^00h,c,w
iorwf	((c:password@delay2_310+2))^00h,c,w
iorwf	((c:password@delay2_310+3))^00h,c,w
	btfss	status,2
	goto	u3441
	goto	u3440

u3441:
	goto	l4066
u3440:
	line	517
	
l4068:
;main.c: 517: clcd_print("                ", (0xC0 + (0)));
		movlw	low(STR_28)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_28)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	467
	
l4070:
	movf	((c:password@T))^00h,c,w
iorwf	((c:password@T+1))^00h,c,w
	btfss	status,2
	goto	u3451
	goto	u3450

u3451:
	goto	l3978
u3450:
	line	523
	
l4072:
;main.c: 518: };main.c: 520: };main.c: 522: };main.c: 523: if (flag == 10) {
		movlw	10
	xorwf	((c:_flag))^00h,c,w
iorwf	((c:_flag+1))^00h,c,w
	btfss	status,2
	goto	u3461
	goto	u3460

u3461:
	goto	l470
u3460:
	line	524
	
l4074:
;main.c: 524: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	525
	
l4076:
;main.c: 525: clcd_print("You are Blocked     ", (0x80 + (0)));
		movlw	low(STR_29)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_29)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	526
	
l4078:
;main.c: 526: for (int z = 120; z >= 0; z--) {
	movlw	high(078h)
	movwf	((c:password@z+1))^00h,c
	movlw	low(078h)
	movwf	((c:password@z))^00h,c
	line	527
	
l4084:
;main.c: 527: clcd_putch(((z % 10) + '0'), (0xC0 + (10)));
	movlw	low(0CAh)
	movwf	((c:clcd_putch@addr))^00h,c
	movff	(c:password@z),(c:___awmod@dividend)
	movff	(c:password@z+1),(c:___awmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	(0+?___awmod)^00h,c,w
	addlw	low(030h)
	
	call	_clcd_putch
	line	528
;main.c: 528: clcd_putch((((z / 10) % 10) + '0'), (0xC0 + (9)));
	movlw	low(0C9h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor))^00h,c
	movff	(c:password@z),(c:___awdiv@dividend)
	movff	(c:password@z+1),(c:___awdiv@dividend+1)
	call	___awdiv	;wreg free
	movff	0+?___awdiv,(c:___awmod@dividend)
	movff	1+?___awdiv,(c:___awmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	(0+?___awmod)^00h,c,w
	addlw	low(030h)
	
	call	_clcd_putch
	line	529
;main.c: 529: clcd_putch((((z / 100) % 10) + '0'), (0xC0 + (8)));
	movlw	low(0C8h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	high(064h)
	movwf	((c:___awdiv@divisor+1))^00h,c
	movlw	low(064h)
	movwf	((c:___awdiv@divisor))^00h,c
	movff	(c:password@z),(c:___awdiv@dividend)
	movff	(c:password@z+1),(c:___awdiv@dividend+1)
	call	___awdiv	;wreg free
	movff	0+?___awdiv,(c:___awmod@dividend)
	movff	1+?___awdiv,(c:___awmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	(0+?___awmod)^00h,c,w
	addlw	low(030h)
	
	call	_clcd_putch
	line	530
	
l4086:
;main.c: 530: clcd_print("wait...", (0xC0 + (0)));
		movlw	low(STR_30)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_30)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	531
	
l4088:
;main.c: 531: for (unsigned long int de = 0; de < 200000; de++);
	movlw	low(0)
	movwf	((c:password@de))^00h,c
	movlw	high(0)
	movwf	((c:password@de+1))^00h,c
	movlw	low highword(0)
	movwf	((c:password@de+2))^00h,c
	movlw	high highword(0)
	movwf	((c:password@de+3))^00h,c
	
l4094:
	movlw	low(01h)
	addwf	((c:password@de))^00h,c
	movlw	0
	addwfc	((c:password@de+1))^00h,c
	addwfc	((c:password@de+2))^00h,c
	addwfc	((c:password@de+3))^00h,c
		movf	((c:password@de+3))^00h,c,w
	bnz	u3470
	movlw	64
	subwf	 ((c:password@de))^00h,c,w
	movlw	13
	subwfb	((c:password@de+1))^00h,c,w
	movlw	3
	subwfb	((c:password@de+2))^00h,c,w
	btfss	status,0
	goto	u3471
	goto	u3470

u3471:
	goto	l4094
u3470:
	line	532
	
l4096:
;main.c: 532: clcd_print("            ", (0xC0 + (0)));
		movlw	low(STR_31)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_31)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	533
	
l4098:
	line	526
	
l4100:
	decf	((c:password@z))^00h,c
	btfss	status,0
	decf	((c:password@z+1))^00h,c
	
l4102:
	btfsc	((c:password@z+1))^00h,c,7
	goto	u3480
	goto	u3481

u3481:
	goto	l4084
u3480:
	line	537
	
l470:
	return	;funcret
	callstack 0
GLOBAL	__end_of_password
	__end_of_password:
	signat	_password,90
	global	_read_ext_eeprom

;; *************** function _read_ext_eeprom *****************
;; Defined at:
;;		line 106 in file "external_eeprom.c"
;; Parameters:    Size  Location     Type
;;  address1        1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  address1        1    1[COMRAM] unsigned char 
;;  data1           1    2[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_i2c_read1
;;		_i2c_rep_start1
;;		_i2c_start1
;;		_i2c_stop1
;;		_i2c_write1
;; This function is called by:
;;		_download_log
;;		_view_log
;;		_change_password
;;		_password
;; This function uses a non-reentrant model
;;
psect	text11,class=CODE,space=0,reloc=2,group=0
	file	"external_eeprom.c"
	line	106
global __ptext11
__ptext11:
psect	text11
	file	"external_eeprom.c"
	line	106
	
_read_ext_eeprom:
;incstack = 0
	callstack 25
;read_ext_eeprom@address1 stored from wreg
	movwf	((c:read_ext_eeprom@address1))^00h,c
	line	110
	
l3142:
;external_eeprom.c: 108: unsigned char data1;;external_eeprom.c: 110: i2c_start1();
	call	_i2c_start1	;wreg free
	line	111
	
l3144:
;external_eeprom.c: 111: i2c_write1(0xA0);
	movlw	(0A0h)&0ffh
	
	call	_i2c_write1
	line	112
	
l3146:
;external_eeprom.c: 112: i2c_write1(address1);
	movf	((c:read_ext_eeprom@address1))^00h,c,w
	
	call	_i2c_write1
	line	113
	
l3148:
;external_eeprom.c: 113: i2c_rep_start1();
	call	_i2c_rep_start1	;wreg free
	line	114
	
l3150:
;external_eeprom.c: 114: i2c_write1(0xA1);
	movlw	(0A1h)&0ffh
	
	call	_i2c_write1
	line	115
;external_eeprom.c: 115: data1 = i2c_read1();
	call	_i2c_read1	;wreg free
	movwf	((c:read_ext_eeprom@data1))^00h,c
	line	116
	
l3152:
;external_eeprom.c: 116: i2c_stop1();
	call	_i2c_stop1	;wreg free
	line	118
;external_eeprom.c: 118: return data1;
	movf	((c:read_ext_eeprom@data1))^00h,c,w
	line	119
	
l846:
	return	;funcret
	callstack 0
GLOBAL	__end_of_read_ext_eeprom
	__end_of_read_ext_eeprom:
	signat	_read_ext_eeprom,4217
	global	_i2c_rep_start1

;; *************** function _i2c_rep_start1 *****************
;; Defined at:
;;		line 63 in file "external_eeprom.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_i2c_idle1
;; This function is called by:
;;		_read_ext_eeprom
;; This function uses a non-reentrant model
;;
psect	text12,class=CODE,space=0,reloc=2,group=0
	line	63
global __ptext12
__ptext12:
psect	text12
	file	"external_eeprom.c"
	line	63
	
_i2c_rep_start1:
;incstack = 0
	callstack 26
	line	65
	
l3058:
;external_eeprom.c: 65: RSEN = 1;
	bsf	c:(32297/8),(32297)&7	;volatile
	line	66
	
l3060:
;external_eeprom.c: 66: i2c_idle1();
	call	_i2c_idle1	;wreg free
	line	67
	
l828:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_rep_start1
	__end_of_i2c_rep_start1:
	signat	_i2c_rep_start1,89
	global	_i2c_read1

;; *************** function _i2c_read1 *****************
;; Defined at:
;;		line 87 in file "external_eeprom.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_i2c_rx_mode1
;; This function is called by:
;;		_read_ext_eeprom
;; This function uses a non-reentrant model
;;
psect	text13,class=CODE,space=0,reloc=2,group=0
	line	87
global __ptext13
__ptext13:
psect	text13
	file	"external_eeprom.c"
	line	87
	
_i2c_read1:
;incstack = 0
	callstack 25
	line	89
	
l3066:
;external_eeprom.c: 89: i2c_rx_mode1();
	call	_i2c_rx_mode1	;wreg free
	line	92
	
l3068:
;external_eeprom.c: 92: return SSPBUF;
	movf	((c:4041))^0f00h,c,w	;volatile
	line	93
	
l837:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_read1
	__end_of_i2c_read1:
	signat	_i2c_read1,89
	global	_i2c_rx_mode1

;; *************** function _i2c_rx_mode1 *****************
;; Defined at:
;;		line 75 in file "external_eeprom.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_i2c_idle1
;; This function is called by:
;;		_i2c_read1
;; This function uses a non-reentrant model
;;
psect	text14,class=CODE,space=0,reloc=2,group=0
	line	75
global __ptext14
__ptext14:
psect	text14
	file	"external_eeprom.c"
	line	75
	
_i2c_rx_mode1:
;incstack = 0
	callstack 25
	line	77
	
l2928:
;external_eeprom.c: 77: RCEN = 1;
	bsf	c:(32299/8),(32299)&7	;volatile
	line	78
	
l2930:
;external_eeprom.c: 78: i2c_idle1();
	call	_i2c_idle1	;wreg free
	line	79
	
l834:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_rx_mode1
	__end_of_i2c_rx_mode1:
	signat	_i2c_rx_mode1,89
	global	___awmod

;; *************** function ___awmod *****************
;; Defined at:
;;		line 7 in file "C:\Program Files\Microchip\xc8\v2.41\pic\sources\c90\common\awmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        2    8[COMRAM] int 
;;  divisor         2   10[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   13[COMRAM] unsigned char 
;;  counter         1   12[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    8[COMRAM] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_password
;; This function uses a non-reentrant model
;;
psect	text15,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c90\common\awmod.c"
	line	7
global __ptext15
__ptext15:
psect	text15
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c90\common\awmod.c"
	line	7
	
___awmod:
;incstack = 0
	callstack 29
	line	12
	
l3838:
	movlw	low(0)
	movwf	((c:___awmod@sign))^00h,c
	line	13
	
l3840:
	btfsc	((c:___awmod@dividend+1))^00h,c,7
	goto	u3140
	goto	u3141

u3141:
	goto	l3846
u3140:
	line	14
	
l3842:
	negf	((c:___awmod@dividend))^00h,c
	comf	((c:___awmod@dividend+1))^00h,c
	btfsc	status,0
	incf	((c:___awmod@dividend+1))^00h,c
	line	15
	
l3844:
	movlw	low(01h)
	movwf	((c:___awmod@sign))^00h,c
	line	17
	
l3846:
	btfsc	((c:___awmod@divisor+1))^00h,c,7
	goto	u3150
	goto	u3151

u3151:
	goto	l3850
u3150:
	line	18
	
l3848:
	negf	((c:___awmod@divisor))^00h,c
	comf	((c:___awmod@divisor+1))^00h,c
	btfsc	status,0
	incf	((c:___awmod@divisor+1))^00h,c
	line	19
	
l3850:
	movf	((c:___awmod@divisor))^00h,c,w
iorwf	((c:___awmod@divisor+1))^00h,c,w
	btfsc	status,2
	goto	u3161
	goto	u3160

u3161:
	goto	l3866
u3160:
	line	20
	
l3852:
	movlw	low(01h)
	movwf	((c:___awmod@counter))^00h,c
	line	21
	goto	l3856
	line	22
	
l3854:
	bcf	status,0
	rlcf	((c:___awmod@divisor))^00h,c
	rlcf	((c:___awmod@divisor+1))^00h,c
	line	23
	incf	((c:___awmod@counter))^00h,c
	line	21
	
l3856:
	
	btfss	((c:___awmod@divisor+1))^00h,c,(15)&7
	goto	u3171
	goto	u3170
u3171:
	goto	l3854
u3170:
	line	26
	
l3858:
		movf	((c:___awmod@divisor))^00h,c,w
	subwf	((c:___awmod@dividend))^00h,c,w
	movf	((c:___awmod@divisor+1))^00h,c,w
	subwfb	((c:___awmod@dividend+1))^00h,c,w
	btfss	status,0
	goto	u3181
	goto	u3180

u3181:
	goto	l3862
u3180:
	line	27
	
l3860:
	movf	((c:___awmod@divisor))^00h,c,w
	subwf	((c:___awmod@dividend))^00h,c
	movf	((c:___awmod@divisor+1))^00h,c,w
	subwfb	((c:___awmod@dividend+1))^00h,c

	line	28
	
l3862:
	bcf	status,0
	rrcf	((c:___awmod@divisor+1))^00h,c
	rrcf	((c:___awmod@divisor))^00h,c
	line	29
	
l3864:
	decfsz	((c:___awmod@counter))^00h,c
	
	goto	l3858
	line	31
	
l3866:
	movf	((c:___awmod@sign))^00h,c,w
	btfsc	status,2
	goto	u3191
	goto	u3190
u3191:
	goto	l3870
u3190:
	line	32
	
l3868:
	negf	((c:___awmod@dividend))^00h,c
	comf	((c:___awmod@dividend+1))^00h,c
	btfsc	status,0
	incf	((c:___awmod@dividend+1))^00h,c
	line	33
	
l3870:
	movff	(c:___awmod@dividend),(c:?___awmod)
	movff	(c:___awmod@dividend+1),(c:?___awmod+1)
	line	34
	
l1093:
	return	;funcret
	callstack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
	signat	___awmod,8314
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 7 in file "C:\Program Files\Microchip\xc8\v2.41\pic\sources\c90\common\awdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        2    0[COMRAM] int 
;;  divisor         2    2[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    6[COMRAM] int 
;;  sign            1    5[COMRAM] unsigned char 
;;  counter         1    4[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_password
;; This function uses a non-reentrant model
;;
psect	text16,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c90\common\awdiv.c"
	line	7
global __ptext16
__ptext16:
psect	text16
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c90\common\awdiv.c"
	line	7
	
___awdiv:
;incstack = 0
	callstack 29
	line	13
	
l3794:
	movlw	low(0)
	movwf	((c:___awdiv@sign))^00h,c
	line	14
	
l3796:
	btfsc	((c:___awdiv@divisor+1))^00h,c,7
	goto	u3080
	goto	u3081

u3081:
	goto	l3802
u3080:
	line	15
	
l3798:
	negf	((c:___awdiv@divisor))^00h,c
	comf	((c:___awdiv@divisor+1))^00h,c
	btfsc	status,0
	incf	((c:___awdiv@divisor+1))^00h,c
	line	16
	
l3800:
	movlw	low(01h)
	movwf	((c:___awdiv@sign))^00h,c
	line	18
	
l3802:
	btfsc	((c:___awdiv@dividend+1))^00h,c,7
	goto	u3090
	goto	u3091

u3091:
	goto	l3808
u3090:
	line	19
	
l3804:
	negf	((c:___awdiv@dividend))^00h,c
	comf	((c:___awdiv@dividend+1))^00h,c
	btfsc	status,0
	incf	((c:___awdiv@dividend+1))^00h,c
	line	20
	
l3806:
	movlw	(01h)&0ffh
	xorwf	((c:___awdiv@sign))^00h,c
	line	22
	
l3808:
	movlw	high(0)
	movwf	((c:___awdiv@quotient+1))^00h,c
	movlw	low(0)
	movwf	((c:___awdiv@quotient))^00h,c
	line	23
	
l3810:
	movf	((c:___awdiv@divisor))^00h,c,w
iorwf	((c:___awdiv@divisor+1))^00h,c,w
	btfsc	status,2
	goto	u3101
	goto	u3100

u3101:
	goto	l3830
u3100:
	line	24
	
l3812:
	movlw	low(01h)
	movwf	((c:___awdiv@counter))^00h,c
	line	25
	goto	l3816
	line	26
	
l3814:
	bcf	status,0
	rlcf	((c:___awdiv@divisor))^00h,c
	rlcf	((c:___awdiv@divisor+1))^00h,c
	line	27
	incf	((c:___awdiv@counter))^00h,c
	line	25
	
l3816:
	
	btfss	((c:___awdiv@divisor+1))^00h,c,(15)&7
	goto	u3111
	goto	u3110
u3111:
	goto	l3814
u3110:
	line	30
	
l3818:
	bcf	status,0
	rlcf	((c:___awdiv@quotient))^00h,c
	rlcf	((c:___awdiv@quotient+1))^00h,c
	line	31
	
l3820:
		movf	((c:___awdiv@divisor))^00h,c,w
	subwf	((c:___awdiv@dividend))^00h,c,w
	movf	((c:___awdiv@divisor+1))^00h,c,w
	subwfb	((c:___awdiv@dividend+1))^00h,c,w
	btfss	status,0
	goto	u3121
	goto	u3120

u3121:
	goto	l3826
u3120:
	line	32
	
l3822:
	movf	((c:___awdiv@divisor))^00h,c,w
	subwf	((c:___awdiv@dividend))^00h,c
	movf	((c:___awdiv@divisor+1))^00h,c,w
	subwfb	((c:___awdiv@dividend+1))^00h,c

	line	33
	
l3824:
	bsf	(0+(0/8)+(c:___awdiv@quotient))^00h,c,(0)&7
	line	35
	
l3826:
	bcf	status,0
	rrcf	((c:___awdiv@divisor+1))^00h,c
	rrcf	((c:___awdiv@divisor))^00h,c
	line	36
	
l3828:
	decfsz	((c:___awdiv@counter))^00h,c
	
	goto	l3818
	line	38
	
l3830:
	movf	((c:___awdiv@sign))^00h,c,w
	btfsc	status,2
	goto	u3131
	goto	u3130
u3131:
	goto	l3834
u3130:
	line	39
	
l3832:
	negf	((c:___awdiv@quotient))^00h,c
	comf	((c:___awdiv@quotient+1))^00h,c
	btfsc	status,0
	incf	((c:___awdiv@quotient+1))^00h,c
	line	40
	
l3834:
	movff	(c:___awdiv@quotient),(c:?___awdiv)
	movff	(c:___awdiv@quotient+1),(c:?___awdiv+1)
	line	41
	
l1080:
	return	;funcret
	callstack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_init_config

;; *************** function _init_config *****************
;; Defined at:
;;		line 16 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_init_adc
;;		_init_clcd
;;		_init_ds1307
;;		_init_i2c
;;		_init_matrix_keypad
;;		_init_uart
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text17,class=CODE,space=0,reloc=2,group=0
	file	"main.c"
	line	16
global __ptext17
__ptext17:
psect	text17
	file	"main.c"
	line	16
	
_init_config:
;incstack = 0
	callstack 25
	line	17
	
l3924:
;main.c: 17: init_matrix_keypad();
	call	_init_matrix_keypad	;wreg free
	line	18
;main.c: 18: init_clcd();
	call	_init_clcd	;wreg free
	line	19
	
l3926:
;main.c: 19: init_i2c();
	call	_init_i2c	;wreg free
	line	20
	
l3928:
;main.c: 20: init_adc();
	call	_init_adc	;wreg free
	line	21
;main.c: 21: init_ds1307();
	call	_init_ds1307	;wreg free
	line	22
	
l3930:
;main.c: 22: init_uart();
	call	_init_uart	;wreg free
	line	23
	
l282:
	return	;funcret
	callstack 0
GLOBAL	__end_of_init_config
	__end_of_init_config:
	signat	_init_config,89
	global	_init_uart

;; *************** function _init_uart *****************
;; Defined at:
;;		line 9 in file "UART.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text18,class=CODE,space=0,reloc=2,group=0
	file	"UART.c"
	line	9
global __ptext18
__ptext18:
psect	text18
	file	"UART.c"
	line	9
	
_init_uart:
;incstack = 0
	callstack 29
	line	12
	
l1962:
;UART.c: 12: TRISC7 = 1;
	bsf	c:(31911/8),(31911)&7	;volatile
	line	13
;UART.c: 13: TRISC6 = 0;
	bcf	c:(31910/8),(31910)&7	;volatile
	line	18
;UART.c: 18: CSRC = 0;
	bcf	c:(32103/8),(32103)&7	;volatile
	line	20
;UART.c: 20: TX9 = 0;
	bcf	c:(32102/8),(32102)&7	;volatile
	line	22
;UART.c: 22: TXEN = 1;
	bsf	c:(32101/8),(32101)&7	;volatile
	line	25
;UART.c: 25: SYNC = 0;
	bcf	c:(32100/8),(32100)&7	;volatile
	line	27
;UART.c: 27: SENDB = 0;
	bcf	c:(32099/8),(32099)&7	;volatile
	line	30
;UART.c: 30: BRGH = 1;
	bsf	c:(32098/8),(32098)&7	;volatile
	line	32
;UART.c: 32: TRMT = 0;
	bcf	c:(32097/8),(32097)&7	;volatile
	line	34
;UART.c: 34: TX9D = 0;
	bcf	c:(32096/8),(32096)&7	;volatile
	line	39
;UART.c: 39: SPEN = 1;
	bsf	c:(32095/8),(32095)&7	;volatile
	line	41
;UART.c: 41: RX9 = 0;
	bcf	c:(32094/8),(32094)&7	;volatile
	line	43
;UART.c: 43: SREN = 0;
	bcf	c:(32093/8),(32093)&7	;volatile
	line	45
;UART.c: 45: CREN = 1;
	bsf	c:(32092/8),(32092)&7	;volatile
	line	47
;UART.c: 47: ADDEN = 0;
	bcf	c:(32091/8),(32091)&7	;volatile
	line	49
;UART.c: 49: FERR = 0;
	bcf	c:(32090/8),(32090)&7	;volatile
	line	51
;UART.c: 51: OERR = 0;
	bcf	c:(32089/8),(32089)&7	;volatile
	line	53
;UART.c: 53: RX9D = 0;
	bcf	c:(32088/8),(32088)&7	;volatile
	line	58
;UART.c: 58: ABDOVF = 0;
	bcf	c:(32199/8),(32199)&7	;volatile
	line	60
;UART.c: 60: RCIDL = 1;
	bsf	c:(32198/8),(32198)&7	;volatile
	line	62
;UART.c: 62: SCKP = 0;
	bcf	c:(32196/8),(32196)&7	;volatile
	line	64
;UART.c: 64: BRG16 = 0;
	bcf	c:(32195/8),(32195)&7	;volatile
	line	66
;UART.c: 66: WUE = 0;
	bcf	c:(32193/8),(32193)&7	;volatile
	line	68
;UART.c: 68: ABDEN = 0;
	bcf	c:(32192/8),(32192)&7	;volatile
	line	72
	
l1964:
;UART.c: 72: SPBRG = 129;
	movlw	low(081h)
	movwf	((c:4015))^0f00h,c	;volatile
	line	75
	
l1966:
;UART.c: 75: TXIE = 1;
	bsf	c:(31980/8),(31980)&7	;volatile
	line	77
	
l1968:
;UART.c: 77: TXIF = 0;
	bcf	c:(31988/8),(31988)&7	;volatile
	line	79
	
l1970:
;UART.c: 79: RCIE = 1;
	bsf	c:(31981/8),(31981)&7	;volatile
	line	81
	
l1972:
;UART.c: 81: RCIF = 0;
	bcf	c:(31989/8),(31989)&7	;volatile
	line	82
	
l154:
	return	;funcret
	callstack 0
GLOBAL	__end_of_init_uart
	__end_of_init_uart:
	signat	_init_uart,89
	global	_init_matrix_keypad

;; *************** function _init_matrix_keypad *****************
;; Defined at:
;;		line 11 in file "Matrix_KEYPAD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text19,class=CODE,space=0,reloc=2,group=0
	file	"Matrix_KEYPAD.c"
	line	11
global __ptext19
__ptext19:
psect	text19
	file	"Matrix_KEYPAD.c"
	line	11
	
_init_matrix_keypad:
;incstack = 0
	callstack 29
	line	14
	
l1974:
;Matrix_KEYPAD.c: 14: ADCON1 = 0x0F;
	movlw	low(0Fh)
	movwf	((c:4033))^0f00h,c	;volatile
	line	17
;Matrix_KEYPAD.c: 17: TRISB = 0x1E;
	movlw	low(01Eh)
	movwf	((c:3987))^0f00h,c	;volatile
	line	20
	
l1976:
;Matrix_KEYPAD.c: 20: RBPU = 0;
	bcf	c:(32655/8),(32655)&7	;volatile
	line	22
	
l1978:
;Matrix_KEYPAD.c: 22: PORTB = PORTB | 0xE0;
	movf	((c:3969))^0f00h,c,w	;volatile
	iorlw	low(0E0h)
	movwf	((c:3969))^0f00h,c	;volatile
	line	23
	
l599:
	return	;funcret
	callstack 0
GLOBAL	__end_of_init_matrix_keypad
	__end_of_init_matrix_keypad:
	signat	_init_matrix_keypad,89
	global	_init_i2c

;; *************** function _init_i2c *****************
;; Defined at:
;;		line 75 in file "RTC.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text20,class=CODE,space=0,reloc=2,group=0
	file	"RTC.c"
	line	75
global __ptext20
__ptext20:
psect	text20
	file	"RTC.c"
	line	75
	
_init_i2c:
;incstack = 0
	callstack 29
	line	78
	
l1950:
;RTC.c: 78: TRISC3 = 1;
	bsf	c:(31907/8),(31907)&7	;volatile
	line	79
;RTC.c: 79: TRISC4 = 1;
	bsf	c:(31908/8),(31908)&7	;volatile
	line	81
	
l1952:
;RTC.c: 81: SSPCON1 = 0x28;
	movlw	low(028h)
	movwf	((c:4038))^0f00h,c	;volatile
	line	83
;RTC.c: 83: SSPADD = 0x31;
	movlw	low(031h)
	movwf	((c:4040))^0f00h,c	;volatile
	line	85
	
l1954:
;RTC.c: 85: CKE = 0;
	bcf	c:(32318/8),(32318)&7	;volatile
	line	87
	
l1956:
;RTC.c: 87: SMP = 1;
	bsf	c:(32319/8),(32319)&7	;volatile
	line	89
	
l1958:
;RTC.c: 89: SSPIF = 0;
	bcf	c:(31987/8),(31987)&7	;volatile
	line	91
	
l1960:
;RTC.c: 91: BCLIF = 0;
	bcf	c:(32011/8),(32011)&7	;volatile
	line	92
	
l58:
	return	;funcret
	callstack 0
GLOBAL	__end_of_init_i2c
	__end_of_init_i2c:
	signat	_init_i2c,89
	global	_init_ds1307

;; *************** function _init_ds1307 *****************
;; Defined at:
;;		line 18 in file "RTC.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  dummy           1    3[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_read_ds1307
;;		_write_ds1307
;; This function is called by:
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text21,class=CODE,space=0,reloc=2,group=0
	line	18
global __ptext21
__ptext21:
psect	text21
	file	"RTC.c"
	line	18
	
_init_ds1307:
;incstack = 0
	callstack 25
	line	23
	
l3256:
;RTC.c: 20: unsigned char dummy;;RTC.c: 23: dummy = read_ds1307(0x00);
	movlw	(0)&0ffh
	
	call	_read_ds1307
	movwf	((c:init_ds1307@dummy))^00h,c
	line	24
	
l3258:
;RTC.c: 24: write_ds1307(0x00, dummy | 0x80);
	movf	((c:init_ds1307@dummy))^00h,c,w
	iorlw	low(080h)
	movwf	((c:write_ds1307@data))^00h,c
	movlw	(0)&0ffh
	
	call	_write_ds1307
	line	27
	
l3260:
;RTC.c: 27: dummy = read_ds1307(0x02);
	movlw	(02h)&0ffh
	
	call	_read_ds1307
	movwf	((c:init_ds1307@dummy))^00h,c
	line	28
;RTC.c: 28: write_ds1307(0x02, dummy | 0x40);
	movf	((c:init_ds1307@dummy))^00h,c,w
	iorlw	low(040h)
	movwf	((c:write_ds1307@data))^00h,c
	movlw	(02h)&0ffh
	
	call	_write_ds1307
	line	43
	
l3262:
;RTC.c: 43: write_ds1307(0x07, 0x93);
	movlw	low(093h)
	movwf	((c:write_ds1307@data))^00h,c
	movlw	(07h)&0ffh
	
	call	_write_ds1307
	line	46
	
l3264:
;RTC.c: 46: dummy = read_ds1307(0x00);
	movlw	(0)&0ffh
	
	call	_read_ds1307
	movwf	((c:init_ds1307@dummy))^00h,c
	line	47
;RTC.c: 47: write_ds1307(0x00, dummy & 0x7F);
	movf	((c:init_ds1307@dummy))^00h,c,w
	andlw	low(07Fh)
	movwf	((c:write_ds1307@data))^00h,c
	movlw	(0)&0ffh
	
	call	_write_ds1307
	line	49
	
l49:
	return	;funcret
	callstack 0
GLOBAL	__end_of_init_ds1307
	__end_of_init_ds1307:
	signat	_init_ds1307,89
	global	_write_ds1307

;; *************** function _write_ds1307 *****************
;; Defined at:
;;		line 50 in file "RTC.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;;  data            1    1[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1    2[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_i2c_start
;;		_i2c_stop
;;		_i2c_write
;; This function is called by:
;;		_init_ds1307
;;		_set_time
;; This function uses a non-reentrant model
;;
psect	text22,class=CODE,space=0,reloc=2,group=0
	line	50
global __ptext22
__ptext22:
psect	text22
	file	"RTC.c"
	line	50
	
_write_ds1307:
;incstack = 0
	callstack 26
;write_ds1307@address stored from wreg
	movwf	((c:write_ds1307@address))^00h,c
	line	52
	
l3086:
;RTC.c: 52: i2c_start();
	call	_i2c_start	;wreg free
	line	53
	
l3088:
;RTC.c: 53: i2c_write(0xD0);
	movlw	(0D0h)&0ffh
	
	call	_i2c_write
	line	54
	
l3090:
;RTC.c: 54: i2c_write(address);
	movf	((c:write_ds1307@address))^00h,c,w
	
	call	_i2c_write
	line	55
	
l3092:
;RTC.c: 55: i2c_write(data);
	movf	((c:write_ds1307@data))^00h,c,w
	
	call	_i2c_write
	line	56
	
l3094:
;RTC.c: 56: i2c_stop();
	call	_i2c_stop	;wreg free
	line	57
	
l52:
	return	;funcret
	callstack 0
GLOBAL	__end_of_write_ds1307
	__end_of_write_ds1307:
	signat	_write_ds1307,8313
	global	_init_clcd

;; *************** function _init_clcd *****************
;; Defined at:
;;		line 32 in file "CLCD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_clcd_write
;; This function is called by:
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text23,class=CODE,space=0,reloc=2,group=0
	file	"CLCD.c"
	line	32
global __ptext23
__ptext23:
psect	text23
	file	"CLCD.c"
	line	32
	
_init_clcd:
;incstack = 0
	callstack 28
	line	35
	
l3266:
;CLCD.c: 35: TRISD = 0x00;
	movlw	low(0)
	movwf	((c:3989))^0f00h,c	;volatile
	line	37
	
l3268:
;CLCD.c: 37: TRISC = TRISC & 0xF8;
	movf	((c:3988))^0f00h,c,w	;volatile
	andlw	low(0F8h)
	movwf	((c:3988))^0f00h,c	;volatile
	line	39
	
l3270:
;CLCD.c: 39: RC0 = 0;
	bcf	c:(31760/8),(31760)&7	;volatile
	line	41
	
l3272:
;CLCD.c: 41: clcd_write(0x38, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(038h)&0ffh
	
	call	_clcd_write
	line	42
	
l3274:
;CLCD.c: 42: clcd_write(0x0C, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(0Ch)&0ffh
	
	call	_clcd_write
	line	43
	
l3276:
;CLCD.c: 43: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	44
	
l769:
	return	;funcret
	callstack 0
GLOBAL	__end_of_init_clcd
	__end_of_init_clcd:
	signat	_init_clcd,89
	global	_init_adc

;; *************** function _init_adc *****************
;; Defined at:
;;		line 9 in file "POT.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text24,class=CODE,space=0,reloc=2,group=0
	file	"POT.c"
	line	9
global __ptext24
__ptext24:
psect	text24
	file	"POT.c"
	line	9
	
_init_adc:
;incstack = 0
	callstack 29
	line	12
	
l1992:
;POT.c: 12: ADFM = 1;
	bsf	c:(32263/8),(32263)&7	;volatile
	line	18
;POT.c: 18: ACQT2 = 1;
	bsf	c:(32261/8),(32261)&7	;volatile
	line	19
;POT.c: 19: ACQT1 = 0;
	bcf	c:(32260/8),(32260)&7	;volatile
	line	20
;POT.c: 20: ACQT0 = 0;
	bcf	c:(32259/8),(32259)&7	;volatile
	line	26
;POT.c: 26: ADCS0 = 0;
	bcf	c:(32256/8),(32256)&7	;volatile
	line	27
;POT.c: 27: ADCS1 = 1;
	bsf	c:(32257/8),(32257)&7	;volatile
	line	28
;POT.c: 28: ADCS2 = 0;
	bcf	c:(32258/8),(32258)&7	;volatile
	line	31
;POT.c: 31: GODONE = 0;
	bcf	c:(32273/8),(32273)&7	;volatile
	line	37
;POT.c: 37: VCFG1 = 0;
	bcf	c:(32269/8),(32269)&7	;volatile
	line	39
;POT.c: 39: VCFG0 = 0;
	bcf	c:(32268/8),(32268)&7	;volatile
	line	42
	
l1994:
;POT.c: 42: ADRESH = 0;
	movlw	low(0)
	movwf	((c:4036))^0f00h,c	;volatile
	line	43
;POT.c: 43: ADRESL = 0;
	movlw	low(0)
	movwf	((c:4035))^0f00h,c	;volatile
	line	46
	
l1996:
;POT.c: 46: ADON = 1;
	bsf	c:(32272/8),(32272)&7	;volatile
	line	47
	
l669:
	return	;funcret
	callstack 0
GLOBAL	__end_of_init_adc
	__end_of_init_adc:
	signat	_init_adc,89
	global	_display_menu

;; *************** function _display_menu *****************
;; Defined at:
;;		line 543 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  key2            1   16[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_clcd_print
;;		_clcd_putch
;;		_clcd_write
;;		_read_switches
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text25,class=CODE,space=0,reloc=2,group=0
	file	"main.c"
	line	543
global __ptext25
__ptext25:
psect	text25
	file	"main.c"
	line	543
	
_display_menu:
;incstack = 0
	callstack 28
	line	545
	
l4104:
;main.c: 545: clcd_putch('*', (0x80 + (0)));
	movlw	low(080h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(02Ah)&0ffh
	
	call	_clcd_putch
	line	546
;main.c: 546: clcd_putch(' ', (0xC0 + (0)));
	movlw	low(0C0h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(020h)&0ffh
	
	call	_clcd_putch
	line	547
	
l4106:
;main.c: 547: clcd_print(menu_view[menu], (0x80 + (1)));
	movf	((c:_menu))^00h,c,w
	mullw	02h
	movf	(prodl)^0f00h,c,w
	addlw	low(_menu_view)
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,(c:clcd_print@data)
	movff	postdec2,(c:clcd_print@data+1)
	movlw	low(081h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	548
	
l4108:
;main.c: 548: clcd_print(menu_view[menu + 1], (0xC0 + (1)));
	movf	((c:_menu))^00h,c,w
	mullw	02h
	movf	(prodl)^0f00h,c,w
	addlw	low(_menu_view+02h)
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,(c:clcd_print@data)
	movff	postdec2,(c:clcd_print@data+1)
	movlw	low(0C1h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	550
	
l4110:
;main.c: 550: unsigned char key2 = read_switches(0);
	movlw	(0)&0ffh
	
	call	_read_switches
	movwf	((c:display_menu@key2))^00h,c
	line	551
	
l4112:
;main.c: 551: if (key2 == 5) {
		movlw	5
	xorwf	((c:display_menu@key2))^00h,c,w
	btfss	status,2
	goto	u3491
	goto	u3490

u3491:
	goto	l4116
u3490:
	line	552
	
l4114:
;main.c: 552: t_count1++;
	infsnz	((c:_t_count1))^00h,c
	incf	((c:_t_count1+1))^00h,c
	line	554
	
l4116:
;main.c: 553: };main.c: 554: if (key2 == 6) {
		movlw	6
	xorwf	((c:display_menu@key2))^00h,c,w
	btfss	status,2
	goto	u3501
	goto	u3500

u3501:
	goto	l4120
u3500:
	line	555
	
l4118:
;main.c: 555: t_count2++;
	infsnz	((c:_t_count2))^00h,c
	incf	((c:_t_count2+1))^00h,c
	line	557
	
l4120:
;main.c: 556: };main.c: 557: if (t_count1 < 200 && t_count1 > 0 && key2 == 0xFF) {
		movf	((c:_t_count1+1))^00h,c,w
	bnz	u3511
	movlw	200
	subwf	 ((c:_t_count1))^00h,c,w
	btfsc	status,0
	goto	u3511
	goto	u3510

u3511:
	goto	l4132
u3510:
	
l4122:
	movf	((c:_t_count1))^00h,c,w
iorwf	((c:_t_count1+1))^00h,c,w
	btfsc	status,2
	goto	u3521
	goto	u3520

u3521:
	goto	l4132
u3520:
	
l4124:
		incf	((c:display_menu@key2))^00h,c,w
	btfss	status,2
	goto	u3531
	goto	u3530

u3531:
	goto	l4132
u3530:
	line	559
	
l4126:
;main.c: 559: t_count1 = 0;
	movlw	high(0)
	movwf	((c:_t_count1+1))^00h,c
	movlw	low(0)
	movwf	((c:_t_count1))^00h,c
	line	560
	
l4128:
;main.c: 560: if (menu < 4)
		movlw	04h-0
	cpfslt	((c:_menu))^00h,c
	goto	u3541
	goto	u3540

u3541:
	goto	l4142
u3540:
	line	561
	
l4130:
;main.c: 561: menu++;
	incf	((c:_menu))^00h,c
	goto	l4142
	line	562
	
l4132:
		movf	((c:_t_count1+1))^00h,c,w
	bnz	u3550
	movlw	201
	subwf	 ((c:_t_count1))^00h,c,w
	btfss	status,0
	goto	u3551
	goto	u3550

u3551:
	goto	l4142
u3550:
	
l4134:
		incf	((c:display_menu@key2))^00h,c,w
	btfss	status,2
	goto	u3561
	goto	u3560

u3561:
	goto	l4142
u3560:
	line	563
	
l4136:
;main.c: 563: flag = 3;
	movlw	high(03h)
	movwf	((c:_flag+1))^00h,c
	movlw	low(03h)
	movwf	((c:_flag))^00h,c
	line	564
;main.c: 564: t_count1 = 0;
	movlw	high(0)
	movwf	((c:_t_count1+1))^00h,c
	movlw	low(0)
	movwf	((c:_t_count1))^00h,c
	line	565
	
l4138:
;main.c: 565: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	566
	
l4140:
;main.c: 566: log_flag = menu;
	movff	(c:_menu),(c:_log_flag)
	line	568
	
l4142:
;main.c: 567: };main.c: 568: if (t_count2 < 200 && t_count2 > 0 && key2 == 0xFF) {
		movf	((c:_t_count2+1))^00h,c,w
	bnz	u3571
	movlw	200
	subwf	 ((c:_t_count2))^00h,c,w
	btfsc	status,0
	goto	u3571
	goto	u3570

u3571:
	goto	l4152
u3570:
	
l4144:
	movf	((c:_t_count2))^00h,c,w
iorwf	((c:_t_count2+1))^00h,c,w
	btfsc	status,2
	goto	u3581
	goto	u3580

u3581:
	goto	l4152
u3580:
	
l4146:
		incf	((c:display_menu@key2))^00h,c,w
	btfss	status,2
	goto	u3591
	goto	u3590

u3591:
	goto	l4152
u3590:
	line	569
	
l4148:
;main.c: 569: t_count2 = 0;
	movlw	high(0)
	movwf	((c:_t_count2+1))^00h,c
	movlw	low(0)
	movwf	((c:_t_count2))^00h,c
	line	570
;main.c: 570: if (menu >= 1)
	movf	((c:_menu))^00h,c,w
	btfsc	status,2
	goto	u3601
	goto	u3600
u3601:
	goto	l483
u3600:
	line	571
	
l4150:
;main.c: 571: menu--;
	decf	((c:_menu))^00h,c
	goto	l483
	line	572
	
l4152:
		movf	((c:_t_count2+1))^00h,c,w
	bnz	u3610
	movlw	201
	subwf	 ((c:_t_count2))^00h,c,w
	btfss	status,0
	goto	u3611
	goto	u3610

u3611:
	goto	l483
u3610:
	
l4154:
		incf	((c:display_menu@key2))^00h,c,w
	btfss	status,2
	goto	u3621
	goto	u3620

u3621:
	goto	l483
u3620:
	line	573
	
l4156:
;main.c: 573: t_count2 = 0;
	movlw	high(0)
	movwf	((c:_t_count2+1))^00h,c
	movlw	low(0)
	movwf	((c:_t_count2))^00h,c
	line	574
;main.c: 574: flag = 0;
	movlw	high(0)
	movwf	((c:_flag+1))^00h,c
	movlw	low(0)
	movwf	((c:_flag))^00h,c
	line	575
	
l4158:
;main.c: 575: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	577
	
l483:
	return	;funcret
	callstack 0
GLOBAL	__end_of_display_menu
	__end_of_display_menu:
	signat	_display_menu,89
	global	_dashboard

;; *************** function _dashboard *****************
;; Defined at:
;;		line 342 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  390[None  ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		___ftdiv
;;		___fttol
;;		___lwdiv
;;		___lwmod
;;		___lwtoft
;;		_clcd_print
;;		_clcd_putch
;;		_clcd_write
;;		_get_time
;;		_read_adc
;;		_read_switches
;;		_store_event
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text26,class=CODE,space=0,reloc=2,group=0
	line	342
global __ptext26
__ptext26:
psect	text26
	file	"main.c"
	line	342
	
_dashboard:
;incstack = 0
	callstack 25
	line	343
	
l3932:
;main.c: 343: clcd_print("TIME     EV  RPM", (0x80 + (0)));
		movlw	low(STR_18)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_18)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	344
	
l3934:
;main.c: 344: get_time();
	call	_get_time	;wreg free
	line	345
	
l3936:; BSR set to: 0

;main.c: 345: clcd_print(time, (0xC0 + (0)));
		movlw	low(_time)
	movwf	((c:clcd_print@data))^00h,c
	clrf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	346
	
l3938:
;main.c: 346: clcd_print(EV[count], (0xC0 + (10)));
	movf	((c:_count))^00h,c,w
	mullw	03h
	movf	(prodl)^0f00h,c,w
	addlw	low(_EV)
	movwf	(??_dashboard+0+0)^00h,c
		movff	(??_dashboard+0+0),(c:clcd_print@data)
	clrf	((c:clcd_print@data+1))^00h,c

	movlw	low(0CAh)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	347
	
l3940:
;main.c: 347: key = read_switches(1);
	movlw	(01h)&0ffh
	
	call	_read_switches
	movwf	((c:_key))^00h,c
	line	349
	
l3942:
;main.c: 348: {;main.c: 349: if (key == 1) {
		decf	((c:_key))^00h,c,w
	btfss	status,2
	goto	u3281
	goto	u3280

u3281:
	goto	l3950
u3280:
	line	350
	
l3944:
;main.c: 350: if (count >= 0 && count < 6) {
		movf	((c:_count+1))^00h,c,w
	bnz	u3291
	movlw	6
	subwf	 ((c:_count))^00h,c,w
	btfsc	status,0
	goto	u3291
	goto	u3290

u3291:
	goto	l3958
u3290:
	line	351
	
l3946:
;main.c: 351: count++;
	infsnz	((c:_count))^00h,c
	incf	((c:_count+1))^00h,c
	line	352
	
l3948:
;main.c: 352: store_event();
	call	_store_event	;wreg free
	goto	l3958
	line	354
	
l3950:
		movlw	2
	xorwf	((c:_key))^00h,c,w
	btfss	status,2
	goto	u3301
	goto	u3300

u3301:
	goto	l3958
u3300:
	line	355
	
l3952:
;main.c: 355: if (count > 1) {
		movf	((c:_count+1))^00h,c,w
	bnz	u3310
	movlw	2
	subwf	 ((c:_count))^00h,c,w
	btfss	status,0
	goto	u3311
	goto	u3310

u3311:
	goto	l3958
u3310:
	line	356
	
l3954:
;main.c: 356: count--;
	decf	((c:_count))^00h,c
	btfss	status,0
	decf	((c:_count+1))^00h,c
	goto	l3948
	line	361
	
l3958:
;main.c: 358: };main.c: 359: };main.c: 361: if (key == 3) {
		movlw	3
	xorwf	((c:_key))^00h,c,w
	btfss	status,2
	goto	u3321
	goto	u3320

u3321:
	goto	l3964
u3320:
	line	362
	
l3960:
;main.c: 362: count = 7;
	movlw	high(07h)
	movwf	((c:_count+1))^00h,c
	movlw	low(07h)
	movwf	((c:_count))^00h,c
	line	363
	
l3962:
;main.c: 363: store_event();
	call	_store_event	;wreg free
	line	365
	
l3964:
;main.c: 364: };main.c: 365: RPM = ((read_adc(0x04)) / 10.3);
	movlw	low(float24(10.300000000000001))
	movwf	((c:___ftdiv@f2))^00h,c
	movlw	high(float24(10.300000000000001))
	movwf	((c:___ftdiv@f2+1))^00h,c
	movlw	low highword(float24(10.300000000000001))
	movwf	((c:___ftdiv@f2+2))^00h,c

	movlw	(04h)&0ffh
	
	call	_read_adc
	movff	0+?_read_adc,(c:___lwtoft@c)
	movff	1+?_read_adc,(c:___lwtoft@c+1)
	call	___lwtoft	;wreg free
	movff	0+?___lwtoft,(c:___ftdiv@f1)
	movff	1+?___lwtoft,(c:___ftdiv@f1+1)
	movff	2+?___lwtoft,(c:___ftdiv@f1+2)
	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(c:___fttol@f1)
	movff	1+?___ftdiv,(c:___fttol@f1+1)
	movff	2+?___ftdiv,(c:___fttol@f1+2)
	call	___fttol	;wreg free
	movff	0+?___fttol,(c:_RPM)
	movff	1+?___fttol,(c:_RPM+1)
	line	366
	
l3966:
;main.c: 366: clcd_putch(RPM / 10 + '0', (0xC0 + (14)));
	movlw	low(0CEh)
	movwf	((c:clcd_putch@addr))^00h,c
	movff	(c:_RPM),(c:___lwdiv@dividend)
	movff	(c:_RPM+1),(c:___lwdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwdiv@divisor))^00h,c
	call	___lwdiv	;wreg free
	movf	(0+?___lwdiv)^00h,c,w
	addlw	low(030h)
	
	call	_clcd_putch
	line	367
	
l3968:
;main.c: 367: clcd_putch(RPM % 10 + '0', (0xC0 + (15)));
	movlw	low(0CFh)
	movwf	((c:clcd_putch@addr))^00h,c
	movff	(c:_RPM),(c:___lwmod@dividend)
	movff	(c:_RPM+1),(c:___lwmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwmod@divisor))^00h,c
	call	___lwmod	;wreg free
	movf	(0+?___lwmod)^00h,c,w
	addlw	low(030h)
	
	call	_clcd_putch
	line	368
	
l3970:
;main.c: 368: if (key == 5) {
		movlw	5
	xorwf	((c:_key))^00h,c,w
	btfss	status,2
	goto	u3331
	goto	u3330

u3331:
	goto	l398
u3330:
	line	369
	
l3972:
;main.c: 369: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	370
	
l3974:
;main.c: 370: flag = 1;
	movlw	high(01h)
	movwf	((c:_flag+1))^00h,c
	movlw	low(01h)
	movwf	((c:_flag))^00h,c
	line	374
	
l398:
	return	;funcret
	callstack 0
GLOBAL	__end_of_dashboard
	__end_of_dashboard:
	signat	_dashboard,90
	global	_store_event

;; *************** function _store_event *****************
;; Defined at:
;;		line 313 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  y               2    7[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		___lwdiv
;;		___lwmod
;;		_write_ext_eeprom
;; This function is called by:
;;		_dashboard
;; This function uses a non-reentrant model
;;
psect	text27,class=CODE,space=0,reloc=2,group=0
	line	313
global __ptext27
__ptext27:
psect	text27
	file	"main.c"
	line	313
	
_store_event:
;incstack = 0
	callstack 26
	line	315
	
l3580:
;main.c: 315: store_data[0] = time[0];
	movff	(_time),(_store_data)
	line	316
;main.c: 316: store_data[1] = time[1];
	movff	0+(_time+01h),0+(_store_data+01h)
	line	317
;main.c: 317: store_data[2] = time[3];
	movff	0+(_time+03h),0+(_store_data+02h)
	line	318
;main.c: 318: store_data[3] = time[4];
	movff	0+(_time+04h),0+(_store_data+03h)
	line	319
;main.c: 319: store_data[4] = time[6];
	movff	0+(_time+06h),0+(_store_data+04h)
	line	320
;main.c: 320: store_data[5] = time[7];
	movff	0+(_time+07h),0+(_store_data+05h)
	line	321
	
l3582:
;main.c: 321: store_data[6] = EV[count][0];
	movf	((c:_count))^00h,c,w
	mullw	03h
	movf	(prodl)^0f00h,c,w
	addlw	low(_EV)
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movlb	0	; () banked
	movwf	(0+(_store_data+06h))&0ffh
	line	322
;main.c: 322: store_data[7] = EV[count][1];
	movf	((c:_count))^00h,c,w
	mullw	03h
	movf	(prodl)^0f00h,c,w
	addlw	low(_EV+01h)
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	(0+(_store_data+07h))&0ffh
	line	323
	
l3584:; BSR set to: 0

;main.c: 323: store_data[8] = (RPM / 10 + '0');
	movff	(c:_RPM),(c:___lwdiv@dividend)
	movff	(c:_RPM+1),(c:___lwdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwdiv@divisor))^00h,c
	call	___lwdiv	;wreg free
	movf	(0+?___lwdiv)^00h,c,w
	addlw	low(030h)
	movlb	0	; () banked
	movwf	(0+(_store_data+08h))&0ffh
	line	324
	
l3586:; BSR set to: 0

;main.c: 324: store_data[9] = (RPM % 10 + '0');
	movff	(c:_RPM),(c:___lwmod@dividend)
	movff	(c:_RPM+1),(c:___lwmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwmod@divisor))^00h,c
	call	___lwmod	;wreg free
	movf	(0+?___lwmod)^00h,c,w
	addlw	low(030h)
	movlb	0	; () banked
	movwf	(0+(_store_data+09h))&0ffh
	line	325
	
l3588:; BSR set to: 0

;main.c: 325: store_data[10] = '\0';
	movlw	low(0)
	movwf	(0+(_store_data+0Ah))&0ffh
	line	326
	
l3590:; BSR set to: 0

;main.c: 326: for (int y = 0; y < 10; y++) {
	movlw	high(0)
	movwf	((c:store_event@y+1))^00h,c
	movlw	low(0)
	movwf	((c:store_event@y))^00h,c
	line	327
	
l3596:
;main.c: 327: write_ext_eeprom((event * 10 + y), store_data[y]);
	movf	((c:store_event@y))^00h,c,w
	addlw	low(_store_data)
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	((c:write_ext_eeprom@data1))^00h,c
	movf	((c:_event))^00h,c,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addwf	((c:store_event@y))^00h,c,w
	
	call	_write_ext_eeprom
	line	326
	
l3598:
	infsnz	((c:store_event@y))^00h,c
	incf	((c:store_event@y+1))^00h,c
	
l3600:
	btfsc	((c:store_event@y+1))^00h,c,7
	goto	u2821
	movf	((c:store_event@y+1))^00h,c,w
	bnz	u2820
	movlw	10
	subwf	 ((c:store_event@y))^00h,c,w
	btfss	status,0
	goto	u2821
	goto	u2820

u2821:
	goto	l3596
u2820:
	line	329
	
l3602:
;main.c: 328: };main.c: 329: event++;
	infsnz	((c:_event))^00h,c
	incf	((c:_event+1))^00h,c
	line	331
	
l3604:
;main.c: 331: if (event == 10) {
		movlw	10
	xorwf	((c:_event))^00h,c,w
iorwf	((c:_event+1))^00h,c,w
	btfss	status,2
	goto	u2831
	goto	u2830

u2831:
	goto	l388
u2830:
	line	332
	
l3606:
;main.c: 332: event = 0;
	movlw	high(0)
	movwf	((c:_event+1))^00h,c
	movlw	low(0)
	movwf	((c:_event))^00h,c
	line	334
	
l388:
	return	;funcret
	callstack 0
GLOBAL	__end_of_store_event
	__end_of_store_event:
	signat	_store_event,89
	global	_write_ext_eeprom

;; *************** function _write_ext_eeprom *****************
;; Defined at:
;;		line 96 in file "external_eeprom.c"
;; Parameters:    Size  Location     Type
;;  address1        1    wreg     unsigned char 
;;  data1           1    1[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  address1        1    4[COMRAM] unsigned char 
;;  i               2    2[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_i2c_start1
;;		_i2c_stop1
;;		_i2c_write1
;; This function is called by:
;;		_store_event
;;		_change_password
;; This function uses a non-reentrant model
;;
psect	text28,class=CODE,space=0,reloc=2,group=0
	file	"external_eeprom.c"
	line	96
global __ptext28
__ptext28:
psect	text28
	file	"external_eeprom.c"
	line	96
	
_write_ext_eeprom:
;incstack = 0
	callstack 26
;write_ext_eeprom@address1 stored from wreg
	movwf	((c:write_ext_eeprom@address1))^00h,c
	line	98
	
l3156:
;external_eeprom.c: 98: i2c_start1();
	call	_i2c_start1	;wreg free
	line	99
	
l3158:
;external_eeprom.c: 99: i2c_write1(0xA0);
	movlw	(0A0h)&0ffh
	
	call	_i2c_write1
	line	100
	
l3160:
;external_eeprom.c: 100: i2c_write1(address1);
	movf	((c:write_ext_eeprom@address1))^00h,c,w
	
	call	_i2c_write1
	line	101
	
l3162:
;external_eeprom.c: 101: i2c_write1(data1);
	movf	((c:write_ext_eeprom@data1))^00h,c,w
	
	call	_i2c_write1
	line	102
	
l3164:
;external_eeprom.c: 102: i2c_stop1();
	call	_i2c_stop1	;wreg free
	line	103
	
l3166:
;external_eeprom.c: 103: for(int i=3000;i--;);
	movlw	high(0BB8h)
	movwf	((c:write_ext_eeprom@i+1))^00h,c
	movlw	low(0BB8h)
	movwf	((c:write_ext_eeprom@i))^00h,c
	
l3168:
	decf	((c:write_ext_eeprom@i))^00h,c
	btfss	status,0
	decf	((c:write_ext_eeprom@i+1))^00h,c
		incf	((c:write_ext_eeprom@i))^00h,c,w
	bnz	u2131
	incf	((c:write_ext_eeprom@i+1))^00h,c,w
	btfss	status,2
	goto	u2131
	goto	u2130

u2131:
	goto	l3168
u2130:
	line	104
	
l843:
	return	;funcret
	callstack 0
GLOBAL	__end_of_write_ext_eeprom
	__end_of_write_ext_eeprom:
	signat	_write_ext_eeprom,8313
	global	_i2c_write1

;; *************** function _i2c_write1 *****************
;; Defined at:
;;		line 69 in file "external_eeprom.c"
;; Parameters:    Size  Location     Type
;;  data1           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data1           1    0[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_i2c_idle1
;; This function is called by:
;;		_write_ext_eeprom
;;		_read_ext_eeprom
;; This function uses a non-reentrant model
;;
psect	text29,class=CODE,space=0,reloc=2,group=0
	line	69
global __ptext29
__ptext29:
psect	text29
	file	"external_eeprom.c"
	line	69
	
_i2c_write1:
;incstack = 0
	callstack 26
;i2c_write1@data1 stored from wreg
	movwf	((c:i2c_write1@data1))^00h,c
	line	71
	
l3062:
;external_eeprom.c: 71: SSPBUF = data1;
	movff	(c:i2c_write1@data1),(c:4041)	;volatile
	line	72
	
l3064:
;external_eeprom.c: 72: i2c_idle1();
	call	_i2c_idle1	;wreg free
	line	73
	
l831:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_write1
	__end_of_i2c_write1:
	signat	_i2c_write1,4217
	global	_i2c_stop1

;; *************** function _i2c_stop1 *****************
;; Defined at:
;;		line 57 in file "external_eeprom.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_i2c_idle1
;; This function is called by:
;;		_write_ext_eeprom
;;		_read_ext_eeprom
;; This function uses a non-reentrant model
;;
psect	text30,class=CODE,space=0,reloc=2,group=0
	line	57
global __ptext30
__ptext30:
psect	text30
	file	"external_eeprom.c"
	line	57
	
_i2c_stop1:
;incstack = 0
	callstack 26
	line	59
	
l3054:
;external_eeprom.c: 59: PEN = 1;
	bsf	c:(32298/8),(32298)&7	;volatile
	line	60
	
l3056:
;external_eeprom.c: 60: i2c_idle1();
	call	_i2c_idle1	;wreg free
	line	61
	
l825:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_stop1
	__end_of_i2c_stop1:
	signat	_i2c_stop1,89
	global	_i2c_start1

;; *************** function _i2c_start1 *****************
;; Defined at:
;;		line 51 in file "external_eeprom.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_i2c_idle1
;; This function is called by:
;;		_write_ext_eeprom
;;		_read_ext_eeprom
;; This function uses a non-reentrant model
;;
psect	text31,class=CODE,space=0,reloc=2,group=0
	line	51
global __ptext31
__ptext31:
psect	text31
	file	"external_eeprom.c"
	line	51
	
_i2c_start1:
;incstack = 0
	callstack 26
	line	53
	
l3050:
;external_eeprom.c: 53: SEN = 1;
	bsf	c:(32296/8),(32296)&7	;volatile
	line	54
	
l3052:
;external_eeprom.c: 54: i2c_idle1();
	call	_i2c_idle1	;wreg free
	line	55
	
l822:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_start1
	__end_of_i2c_start1:
	signat	_i2c_start1,89
	global	_i2c_idle1

;; *************** function _i2c_idle1 *****************
;; Defined at:
;;		line 37 in file "external_eeprom.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_i2c_start1
;;		_i2c_stop1
;;		_i2c_rep_start1
;;		_i2c_write1
;;		_i2c_rx_mode1
;; This function uses a non-reentrant model
;;
psect	text32,class=CODE,space=0,reloc=2,group=0
	line	37
global __ptext32
__ptext32:
psect	text32
	file	"external_eeprom.c"
	line	37
	
_i2c_idle1:
;incstack = 0
	callstack 26
	line	39
	
l2920:
;external_eeprom.c: 39: while (!SSPIF);
	
l812:
	btfss	c:(31987/8),(31987)&7	;volatile
	goto	u1851
	goto	u1850
u1851:
	goto	l812
u1850:
	
l814:
	line	40
;external_eeprom.c: 40: SSPIF = 0;
	bcf	c:(31987/8),(31987)&7	;volatile
	line	41
	
l815:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_idle1
	__end_of_i2c_idle1:
	signat	_i2c_idle1,89
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 7 in file "C:\Program Files\Microchip\xc8\v2.41\pic\sources\c90\common\lwmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        2    0[COMRAM] unsigned int 
;;  divisor         2    2[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    4[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_set_time
;;		_store_event
;;		_dashboard
;; This function uses a non-reentrant model
;;
psect	text33,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c90\common\lwmod.c"
	line	7
global __ptext33
__ptext33:
psect	text33
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c90\common\lwmod.c"
	line	7
	
___lwmod:
;incstack = 0
	callstack 28
	line	12
	
l3240:
	movf	((c:___lwmod@divisor))^00h,c,w
iorwf	((c:___lwmod@divisor+1))^00h,c,w
	btfsc	status,2
	goto	u2271
	goto	u2270

u2271:
	goto	l1338
u2270:
	line	13
	
l3242:
	movlw	low(01h)
	movwf	((c:___lwmod@counter))^00h,c
	line	14
	goto	l3246
	line	15
	
l3244:
	bcf	status,0
	rlcf	((c:___lwmod@divisor))^00h,c
	rlcf	((c:___lwmod@divisor+1))^00h,c
	line	16
	incf	((c:___lwmod@counter))^00h,c
	line	14
	
l3246:
	
	btfss	((c:___lwmod@divisor+1))^00h,c,(15)&7
	goto	u2281
	goto	u2280
u2281:
	goto	l3244
u2280:
	line	19
	
l3248:
		movf	((c:___lwmod@divisor))^00h,c,w
	subwf	((c:___lwmod@dividend))^00h,c,w
	movf	((c:___lwmod@divisor+1))^00h,c,w
	subwfb	((c:___lwmod@dividend+1))^00h,c,w
	btfss	status,0
	goto	u2291
	goto	u2290

u2291:
	goto	l3252
u2290:
	line	20
	
l3250:
	movf	((c:___lwmod@divisor))^00h,c,w
	subwf	((c:___lwmod@dividend))^00h,c
	movf	((c:___lwmod@divisor+1))^00h,c,w
	subwfb	((c:___lwmod@dividend+1))^00h,c

	line	21
	
l3252:
	bcf	status,0
	rrcf	((c:___lwmod@divisor+1))^00h,c
	rrcf	((c:___lwmod@divisor))^00h,c
	line	22
	
l3254:
	decfsz	((c:___lwmod@counter))^00h,c
	
	goto	l3248
	line	23
	
l1338:
	line	24
	movff	(c:___lwmod@dividend),(c:?___lwmod)
	movff	(c:___lwmod@dividend+1),(c:?___lwmod+1)
	line	25
	
l1345:
	return	;funcret
	callstack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 7 in file "C:\Program Files\Microchip\xc8\v2.41\pic\sources\c90\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        2    0[COMRAM] unsigned int 
;;  divisor         2    2[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    4[COMRAM] unsigned int 
;;  counter         1    6[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_store_event
;;		_dashboard
;; This function uses a non-reentrant model
;;
psect	text34,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c90\common\lwdiv.c"
	line	7
global __ptext34
__ptext34:
psect	text34
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c90\common\lwdiv.c"
	line	7
	
___lwdiv:
;incstack = 0
	callstack 28
	line	13
	
l3218:
	movlw	high(0)
	movwf	((c:___lwdiv@quotient+1))^00h,c
	movlw	low(0)
	movwf	((c:___lwdiv@quotient))^00h,c
	line	14
	
l3220:
	movf	((c:___lwdiv@divisor))^00h,c,w
iorwf	((c:___lwdiv@divisor+1))^00h,c,w
	btfsc	status,2
	goto	u2241
	goto	u2240

u2241:
	goto	l1328
u2240:
	line	15
	
l3222:
	movlw	low(01h)
	movwf	((c:___lwdiv@counter))^00h,c
	line	16
	goto	l3226
	line	17
	
l3224:
	bcf	status,0
	rlcf	((c:___lwdiv@divisor))^00h,c
	rlcf	((c:___lwdiv@divisor+1))^00h,c
	line	18
	incf	((c:___lwdiv@counter))^00h,c
	line	16
	
l3226:
	
	btfss	((c:___lwdiv@divisor+1))^00h,c,(15)&7
	goto	u2251
	goto	u2250
u2251:
	goto	l3224
u2250:
	line	21
	
l3228:
	bcf	status,0
	rlcf	((c:___lwdiv@quotient))^00h,c
	rlcf	((c:___lwdiv@quotient+1))^00h,c
	line	22
	
l3230:
		movf	((c:___lwdiv@divisor))^00h,c,w
	subwf	((c:___lwdiv@dividend))^00h,c,w
	movf	((c:___lwdiv@divisor+1))^00h,c,w
	subwfb	((c:___lwdiv@dividend+1))^00h,c,w
	btfss	status,0
	goto	u2261
	goto	u2260

u2261:
	goto	l3236
u2260:
	line	23
	
l3232:
	movf	((c:___lwdiv@divisor))^00h,c,w
	subwf	((c:___lwdiv@dividend))^00h,c
	movf	((c:___lwdiv@divisor+1))^00h,c,w
	subwfb	((c:___lwdiv@dividend+1))^00h,c

	line	24
	
l3234:
	bsf	(0+(0/8)+(c:___lwdiv@quotient))^00h,c,(0)&7
	line	26
	
l3236:
	bcf	status,0
	rrcf	((c:___lwdiv@divisor+1))^00h,c
	rrcf	((c:___lwdiv@divisor))^00h,c
	line	27
	
l3238:
	decfsz	((c:___lwdiv@counter))^00h,c
	
	goto	l3228
	line	28
	
l1328:
	line	29
	movff	(c:___lwdiv@quotient),(c:?___lwdiv)
	movff	(c:___lwdiv@quotient+1),(c:?___lwdiv+1)
	line	30
	
l1335:
	return	;funcret
	callstack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_read_switches

;; *************** function _read_switches *****************
;; Defined at:
;;		line 95 in file "Matrix_KEYPAD.c"
;; Parameters:    Size  Location     Type
;;  detection_ty    1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  detection_ty    1    0[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_scan_key
;; This function is called by:
;;		_set_time
;;		_view_log
;;		_dashboard
;;		_change_password
;;		_password
;;		_display_menu
;; This function uses a non-reentrant model
;;
psect	text35,class=CODE,space=0,reloc=2,group=0
	file	"Matrix_KEYPAD.c"
	line	95
global __ptext35
__ptext35:
psect	text35
	file	"Matrix_KEYPAD.c"
	line	95
	
_read_switches:
;incstack = 0
	callstack 27
;read_switches@detection_type stored from wreg
	movwf	((c:read_switches@detection_type))^00h,c
	line	99
	
l3104:
;Matrix_KEYPAD.c: 97: static unsigned char once = 1, key;;Matrix_KEYPAD.c: 99: if (detection_type == 1)
		decf	((c:read_switches@detection_type))^00h,c,w
	btfss	status,2
	goto	u2051
	goto	u2050

u2051:
	goto	l3122
u2050:
	line	101
	
l3106:
;Matrix_KEYPAD.c: 100: {;Matrix_KEYPAD.c: 101: key = scan_key();
	call	_scan_key	;wreg free
	movwf	((c:read_switches@key))^00h,c
	line	102
	
l3108:
;Matrix_KEYPAD.c: 102: if(key != 0xFF && once )
		incf	((c:read_switches@key))^00h,c,w
	btfsc	status,2
	goto	u2061
	goto	u2060

u2061:
	goto	l3118
u2060:
	
l3110:
	movf	((c:read_switches@once))^00h,c,w
	btfsc	status,2
	goto	u2071
	goto	u2070
u2071:
	goto	l3118
u2070:
	line	104
	
l3112:
;Matrix_KEYPAD.c: 103: {;Matrix_KEYPAD.c: 104: once = 0;
	movlw	low(0)
	movwf	((c:read_switches@once))^00h,c
	line	105
;Matrix_KEYPAD.c: 105: return key;
	movf	((c:read_switches@key))^00h,c,w
	goto	l632
	line	107
	
l3118:
;Matrix_KEYPAD.c: 107: else if(key == 0xFF)
		incf	((c:read_switches@key))^00h,c,w
	btfss	status,2
	goto	u2081
	goto	u2080

u2081:
	goto	l3128
u2080:
	line	109
	
l3120:
;Matrix_KEYPAD.c: 108: {;Matrix_KEYPAD.c: 109: once = 1;
	movlw	low(01h)
	movwf	((c:read_switches@once))^00h,c
	goto	l3128
	line	112
	
l3122:
;Matrix_KEYPAD.c: 112: else if (detection_type == 0)
	movf	((c:read_switches@detection_type))^00h,c,w
	btfss	status,2
	goto	u2091
	goto	u2090
u2091:
	goto	l3128
u2090:
	line	114
	
l3124:
;Matrix_KEYPAD.c: 113: {;Matrix_KEYPAD.c: 114: return scan_key();
	call	_scan_key	;wreg free
	goto	l632
	line	117
	
l3128:
;Matrix_KEYPAD.c: 115: };Matrix_KEYPAD.c: 117: return 0xFF;
	movlw	(0FFh)&0ffh
	line	118
	
l632:
	return	;funcret
	callstack 0
GLOBAL	__end_of_read_switches
	__end_of_read_switches:
	signat	_read_switches,4217
	global	_scan_key

;; *************** function _scan_key *****************
;; Defined at:
;;		line 25 in file "Matrix_KEYPAD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_read_switches
;; This function uses a non-reentrant model
;;
psect	text36,class=CODE,space=0,reloc=2,group=0
	line	25
global __ptext36
__ptext36:
psect	text36
	file	"Matrix_KEYPAD.c"
	line	25
	
_scan_key:
;incstack = 0
	callstack 27
	line	27
	
l2978:
;Matrix_KEYPAD.c: 27: PORTBbits.RB5 = 0;
	bcf	((c:3969))^0f00h,c,5	;volatile
	line	28
;Matrix_KEYPAD.c: 28: PORTBbits.RB6 = 1;
	bsf	((c:3969))^0f00h,c,6	;volatile
	line	29
;Matrix_KEYPAD.c: 29: PORTBbits.RB7 = 1;
	bsf	((c:3969))^0f00h,c,7	;volatile
	line	31
;Matrix_KEYPAD.c: 31: if (PORTBbits.RB1 == 0)
	btfsc	((c:3969))^0f00h,c,1	;volatile
	goto	u1901
	goto	u1900
u1901:
	goto	l602
u1900:
	line	33
	
l2980:
;Matrix_KEYPAD.c: 32: {;Matrix_KEYPAD.c: 33: return 1;
	movlw	(01h)&0ffh
	goto	l603
	line	35
	
l602:
;Matrix_KEYPAD.c: 35: else if (PORTBbits.RB2 == 0)
	btfsc	((c:3969))^0f00h,c,2	;volatile
	goto	u1911
	goto	u1910
u1911:
	goto	l605
u1910:
	line	37
	
l2986:
;Matrix_KEYPAD.c: 36: {;Matrix_KEYPAD.c: 37: return 4;
	movlw	(04h)&0ffh
	goto	l603
	line	39
	
l605:
;Matrix_KEYPAD.c: 39: else if (PORTBbits.RB3 == 0)
	btfsc	((c:3969))^0f00h,c,3	;volatile
	goto	u1921
	goto	u1920
u1921:
	goto	l607
u1920:
	line	41
	
l2992:
;Matrix_KEYPAD.c: 40: {;Matrix_KEYPAD.c: 41: return 7;
	movlw	(07h)&0ffh
	goto	l603
	line	43
	
l607:
;Matrix_KEYPAD.c: 43: else if (PORTBbits.RB4 == 0)
	btfsc	((c:3969))^0f00h,c,4	;volatile
	goto	u1931
	goto	u1930
u1931:
	goto	l604
u1930:
	line	45
	
l2998:
;Matrix_KEYPAD.c: 44: {;Matrix_KEYPAD.c: 45: return 10;
	movlw	(0Ah)&0ffh
	goto	l603
	line	48
	
l604:
;Matrix_KEYPAD.c: 46: };Matrix_KEYPAD.c: 48: PORTBbits.RB5 = 1;
	bsf	((c:3969))^0f00h,c,5	;volatile
	line	49
;Matrix_KEYPAD.c: 49: PORTBbits.RB6 = 0;
	bcf	((c:3969))^0f00h,c,6	;volatile
	line	50
;Matrix_KEYPAD.c: 50: PORTBbits.RB7 = 1;
	bsf	((c:3969))^0f00h,c,7	;volatile
	line	52
;Matrix_KEYPAD.c: 52: if (PORTBbits.RB1 == 0)
	btfsc	((c:3969))^0f00h,c,1	;volatile
	goto	u1941
	goto	u1940
u1941:
	goto	l610
u1940:
	line	54
	
l3002:
;Matrix_KEYPAD.c: 53: {;Matrix_KEYPAD.c: 54: return 2;
	movlw	(02h)&0ffh
	goto	l603
	line	56
	
l610:
;Matrix_KEYPAD.c: 56: else if (PORTBbits.RB2 == 0)
	btfsc	((c:3969))^0f00h,c,2	;volatile
	goto	u1951
	goto	u1950
u1951:
	goto	l612
u1950:
	line	58
	
l3008:
;Matrix_KEYPAD.c: 57: {;Matrix_KEYPAD.c: 58: return 5;
	movlw	(05h)&0ffh
	goto	l603
	line	60
	
l612:
;Matrix_KEYPAD.c: 60: else if (PORTBbits.RB3 == 0)
	btfsc	((c:3969))^0f00h,c,3	;volatile
	goto	u1961
	goto	u1960
u1961:
	goto	l614
u1960:
	line	62
	
l3014:
;Matrix_KEYPAD.c: 61: {;Matrix_KEYPAD.c: 62: return 8;
	movlw	(08h)&0ffh
	goto	l603
	line	64
	
l614:
;Matrix_KEYPAD.c: 64: else if (PORTBbits.RB4 == 0)
	btfsc	((c:3969))^0f00h,c,4	;volatile
	goto	u1971
	goto	u1970
u1971:
	goto	l611
u1970:
	line	66
	
l3020:
;Matrix_KEYPAD.c: 65: {;Matrix_KEYPAD.c: 66: return 11;
	movlw	(0Bh)&0ffh
	goto	l603
	line	69
	
l611:
;Matrix_KEYPAD.c: 67: };Matrix_KEYPAD.c: 69: PORTBbits.RB5 = 1;
	bsf	((c:3969))^0f00h,c,5	;volatile
	line	70
;Matrix_KEYPAD.c: 70: PORTBbits.RB6 = 1;
	bsf	((c:3969))^0f00h,c,6	;volatile
	line	71
;Matrix_KEYPAD.c: 71: PORTBbits.RB7 = 0;
	bcf	((c:3969))^0f00h,c,7	;volatile
	line	73
;Matrix_KEYPAD.c: 73: PORTBbits.RB7 = 0;
	bcf	((c:3969))^0f00h,c,7	;volatile
	line	75
;Matrix_KEYPAD.c: 75: if (PORTBbits.RB1 == 0)
	btfsc	((c:3969))^0f00h,c,1	;volatile
	goto	u1981
	goto	u1980
u1981:
	goto	l617
u1980:
	line	77
	
l3024:
;Matrix_KEYPAD.c: 76: {;Matrix_KEYPAD.c: 77: return 3;
	movlw	(03h)&0ffh
	goto	l603
	line	79
	
l617:
;Matrix_KEYPAD.c: 79: else if (PORTBbits.RB2 == 0)
	btfsc	((c:3969))^0f00h,c,2	;volatile
	goto	u1991
	goto	u1990
u1991:
	goto	l619
u1990:
	line	81
	
l3030:
;Matrix_KEYPAD.c: 80: {;Matrix_KEYPAD.c: 81: return 6;
	movlw	(06h)&0ffh
	goto	l603
	line	83
	
l619:
;Matrix_KEYPAD.c: 83: else if (PORTBbits.RB3 == 0)
	btfsc	((c:3969))^0f00h,c,3	;volatile
	goto	u2001
	goto	u2000
u2001:
	goto	l621
u2000:
	line	85
	
l3036:
;Matrix_KEYPAD.c: 84: {;Matrix_KEYPAD.c: 85: return 9;
	movlw	(09h)&0ffh
	goto	l603
	line	87
	
l621:
;Matrix_KEYPAD.c: 87: else if (PORTBbits.RB4 == 0)
	btfsc	((c:3969))^0f00h,c,4	;volatile
	goto	u2011
	goto	u2010
u2011:
	goto	l620
u2010:
	line	89
	
l3042:
;Matrix_KEYPAD.c: 88: {;Matrix_KEYPAD.c: 89: return 12;
	movlw	(0Ch)&0ffh
	goto	l603
	line	92
	
l620:
	
l3046:
;Matrix_KEYPAD.c: 90: };Matrix_KEYPAD.c: 92: return 0xFF;
	movlw	(0FFh)&0ffh
	line	93
	
l603:
	return	;funcret
	callstack 0
GLOBAL	__end_of_scan_key
	__end_of_scan_key:
	signat	_scan_key,89
	global	_read_adc

;; *************** function _read_adc *****************
;; Defined at:
;;		line 49 in file "POT.c"
;; Parameters:    Size  Location     Type
;;  channel         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  channel         1    6[COMRAM] unsigned char 
;;  reg_val         2    4[COMRAM] unsigned short 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] unsigned short 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_dashboard
;; This function uses a non-reentrant model
;;
psect	text37,class=CODE,space=0,reloc=2,group=0
	file	"POT.c"
	line	49
global __ptext37
__ptext37:
psect	text37
	file	"POT.c"
	line	49
	
_read_adc:
;incstack = 0
	callstack 29
;read_adc@channel stored from wreg
	movwf	((c:read_adc@channel))^00h,c
	line	55
	
l3608:
;POT.c: 51: unsigned short reg_val;;POT.c: 55: ADCON0 = (ADCON0 & 0xC3) | (channel << 2);
	movff	(c:read_adc@channel),??_read_adc+0+0
	bcf	status,0
	rlcf	(??_read_adc+0+0)^00h,c
	bcf	status,0
	rlcf	(??_read_adc+0+0)^00h,c

	movf	((c:4034))^0f00h,c,w	;volatile
	andlw	low(0C3h)
	iorwf	(??_read_adc+0+0)^00h,c,w
	movwf	((c:4034))^0f00h,c	;volatile
	line	58
	
l3610:
;POT.c: 58: GO = 1;
	bsf	c:(32273/8),(32273)&7	;volatile
	line	59
;POT.c: 59: while (GO);
	
l672:
	btfsc	c:(32273/8),(32273)&7	;volatile
	goto	u2841
	goto	u2840
u2841:
	goto	l672
u2840:
	line	60
	
l3612:
;POT.c: 60: reg_val = (ADRESH << 8) | ADRESL;
	movf	((c:4035))^0f00h,c,w	;volatile
	movff	(c:4036),??_read_adc+0+0	;volatile
	clrf	(??_read_adc+0+0+1)^00h,c
	movff	??_read_adc+0+0,??_read_adc+0+1
	clrf	(??_read_adc+0+0)^00h,c
	iorwf	(??_read_adc+0+0)^00h,c,w
	movwf	((c:read_adc@reg_val))^00h,c
	movf	(??_read_adc+0+1)^00h,c,w
	movwf	1+((c:read_adc@reg_val))^00h,c
	line	62
	
l3614:
;POT.c: 62: return reg_val;
	movff	(c:read_adc@reg_val),(c:?_read_adc)
	movff	(c:read_adc@reg_val+1),(c:?_read_adc+1)
	line	63
	
l675:
	return	;funcret
	callstack 0
GLOBAL	__end_of_read_adc
	__end_of_read_adc:
	signat	_read_adc,4218
	global	_get_time

;; *************** function _get_time *****************
;; Defined at:
;;		line 283 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  379[None  ] int 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 3F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_read_ds1307
;; This function is called by:
;;		_dashboard
;; This function uses a non-reentrant model
;;
psect	text38,class=CODE,space=0,reloc=2,group=0
	file	"main.c"
	line	283
global __ptext38
__ptext38:
psect	text38
	file	"main.c"
	line	283
	
_get_time:
;incstack = 0
	callstack 25
	line	284
	
l3562:
;main.c: 284: clock_reg[0] = read_ds1307(0x02);
	movlw	(02h)&0ffh
	
	call	_read_ds1307
	movwf	((c:_clock_reg))^00h,c
	line	285
;main.c: 285: clock_reg[1] = read_ds1307(0x01);
	movlw	(01h)&0ffh
	
	call	_read_ds1307
	movwf	(0+((c:_clock_reg)+01h))^00h,c
	line	286
;main.c: 286: clock_reg[2] = read_ds1307(0x00);
	movlw	(0)&0ffh
	
	call	_read_ds1307
	movwf	(0+((c:_clock_reg)+02h))^00h,c
	line	288
	
l3564:
;main.c: 288: if (clock_reg[0] & 0x40) {
	
	btfss	((c:_clock_reg))^00h,c,(6)&7
	goto	u2811
	goto	u2810
u2811:
	goto	l3568
u2810:
	line	289
	
l3566:
;main.c: 289: time[0] = '0' + ((clock_reg[0] >> 4) & 0x01);
	swapf	((c:_clock_reg))^00h,c,w
	andlw	(0ffh shr 4) & 0ffh
	andlw	low(01h)
	addlw	low(030h)
	movlb	0	; () banked
	movwf	((_time))&0ffh
	line	290
;main.c: 290: time[1] = '0' + (clock_reg[0] & 0x0F);
	movf	((c:_clock_reg))^00h,c,w
	andlw	low(0Fh)
	addlw	low(030h)
	movwf	(0+(_time+01h))&0ffh
	line	291
;main.c: 291: } else {
	goto	l3570
	line	292
	
l3568:
;main.c: 292: time[0] = '0' + ((clock_reg[0] >> 4) & 0x03);
	swapf	((c:_clock_reg))^00h,c,w
	andlw	(0ffh shr 4) & 0ffh
	andlw	low(03h)
	addlw	low(030h)
	movlb	0	; () banked
	movwf	((_time))&0ffh
	line	293
;main.c: 293: time[1] = '0' + (clock_reg[0] & 0x0F);
	movf	((c:_clock_reg))^00h,c,w
	andlw	low(0Fh)
	addlw	low(030h)
	movwf	(0+(_time+01h))&0ffh
	line	295
	
l3570:; BSR set to: 0

;main.c: 294: };main.c: 295: time[2] = ':';
	movlw	low(03Ah)
	movwf	(0+(_time+02h))&0ffh
	line	296
	
l3572:; BSR set to: 0

;main.c: 296: time[3] = '0' + ((clock_reg[1] >> 4) & 0x0F);
	swapf	(0+((c:_clock_reg)+01h))^00h,c,w
	andlw	(0ffh shr 4) & 0ffh
	andlw	low(0Fh)
	addlw	low(030h)
	movwf	(0+(_time+03h))&0ffh
	line	297
	
l3574:; BSR set to: 0

;main.c: 297: time[4] = '0' + (clock_reg[1] & 0x0F);
	movf	(0+((c:_clock_reg)+01h))^00h,c,w
	andlw	low(0Fh)
	addlw	low(030h)
	movwf	(0+(_time+04h))&0ffh
	line	298
	
l3576:; BSR set to: 0

;main.c: 298: time[5] = ':';
	movlw	low(03Ah)
	movwf	(0+(_time+05h))&0ffh
	line	299
;main.c: 299: time[6] = '0' + ((clock_reg[2] >> 4) & 0x0F);
	swapf	(0+((c:_clock_reg)+02h))^00h,c,w
	andlw	(0ffh shr 4) & 0ffh
	andlw	low(0Fh)
	addlw	low(030h)
	movwf	(0+(_time+06h))&0ffh
	line	300
;main.c: 300: time[7] = '0' + (clock_reg[2] & 0x0F);
	movf	(0+((c:_clock_reg)+02h))^00h,c,w
	andlw	low(0Fh)
	addlw	low(030h)
	movwf	(0+(_time+07h))&0ffh
	line	301
	
l3578:; BSR set to: 0

;main.c: 301: time[8] = '\0';
	movlw	low(0)
	movwf	(0+(_time+08h))&0ffh
	line	302
	
l382:; BSR set to: 0

	return	;funcret
	callstack 0
GLOBAL	__end_of_get_time
	__end_of_get_time:
	signat	_get_time,90
	global	_read_ds1307

;; *************** function _read_ds1307 *****************
;; Defined at:
;;		line 59 in file "RTC.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1    1[COMRAM] unsigned char 
;;  data            1    2[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_i2c_read
;;		_i2c_rep_start
;;		_i2c_start
;;		_i2c_stop
;;		_i2c_write
;; This function is called by:
;;		_init_ds1307
;;		_get_time
;; This function uses a non-reentrant model
;;
psect	text39,class=CODE,space=0,reloc=2,group=0
	file	"RTC.c"
	line	59
global __ptext39
__ptext39:
psect	text39
	file	"RTC.c"
	line	59
	
_read_ds1307:; BSR set to: 0

;incstack = 0
	callstack 25
;read_ds1307@address stored from wreg
	movwf	((c:read_ds1307@address))^00h,c
	line	63
	
l3072:
;RTC.c: 61: unsigned char data;;RTC.c: 63: i2c_start();
	call	_i2c_start	;wreg free
	line	64
	
l3074:
;RTC.c: 64: i2c_write(0xD0);
	movlw	(0D0h)&0ffh
	
	call	_i2c_write
	line	65
	
l3076:
;RTC.c: 65: i2c_write(address);
	movf	((c:read_ds1307@address))^00h,c,w
	
	call	_i2c_write
	line	66
	
l3078:
;RTC.c: 66: i2c_rep_start();
	call	_i2c_rep_start	;wreg free
	line	67
	
l3080:
;RTC.c: 67: i2c_write(0xD1);
	movlw	(0D1h)&0ffh
	
	call	_i2c_write
	line	68
;RTC.c: 68: data = i2c_read();
	call	_i2c_read	;wreg free
	movwf	((c:read_ds1307@data))^00h,c
	line	69
	
l3082:
;RTC.c: 69: i2c_stop();
	call	_i2c_stop	;wreg free
	line	71
;RTC.c: 71: return data;
	movf	((c:read_ds1307@data))^00h,c,w
	line	72
	
l55:
	return	;funcret
	callstack 0
GLOBAL	__end_of_read_ds1307
	__end_of_read_ds1307:
	signat	_read_ds1307,4217
	global	_i2c_write

;; *************** function _i2c_write *****************
;; Defined at:
;;		line 126 in file "RTC.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    0[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_i2c_idle
;; This function is called by:
;;		_write_ds1307
;;		_read_ds1307
;; This function uses a non-reentrant model
;;
psect	text40,class=CODE,space=0,reloc=2,group=0
	line	126
global __ptext40
__ptext40:
psect	text40
	file	"RTC.c"
	line	126
	
_i2c_write:
;incstack = 0
	callstack 26
;i2c_write@data stored from wreg
	movwf	((c:i2c_write@data))^00h,c
	line	128
	
l2936:
;RTC.c: 128: SSPBUF = data;
	movff	(c:i2c_write@data),(c:4041)	;volatile
	line	129
	
l2938:
;RTC.c: 129: i2c_idle();
	call	_i2c_idle	;wreg free
	line	130
	
l80:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_write
	__end_of_i2c_write:
	signat	_i2c_write,4217
	global	_i2c_stop

;; *************** function _i2c_stop *****************
;; Defined at:
;;		line 114 in file "RTC.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_i2c_idle
;; This function is called by:
;;		_write_ds1307
;;		_read_ds1307
;; This function uses a non-reentrant model
;;
psect	text41,class=CODE,space=0,reloc=2,group=0
	line	114
global __ptext41
__ptext41:
psect	text41
	file	"RTC.c"
	line	114
	
_i2c_stop:
;incstack = 0
	callstack 26
	line	116
	
l2940:
;RTC.c: 116: PEN = 1;
	bsf	c:(32298/8),(32298)&7	;volatile
	line	117
	
l2942:
;RTC.c: 117: i2c_idle();
	call	_i2c_idle	;wreg free
	line	118
	
l74:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_stop
	__end_of_i2c_stop:
	signat	_i2c_stop,89
	global	_i2c_start

;; *************** function _i2c_start *****************
;; Defined at:
;;		line 108 in file "RTC.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_i2c_idle
;; This function is called by:
;;		_write_ds1307
;;		_read_ds1307
;; This function uses a non-reentrant model
;;
psect	text42,class=CODE,space=0,reloc=2,group=0
	line	108
global __ptext42
__ptext42:
psect	text42
	file	"RTC.c"
	line	108
	
_i2c_start:
;incstack = 0
	callstack 26
	line	110
	
l2932:
;RTC.c: 110: SEN = 1;
	bsf	c:(32296/8),(32296)&7	;volatile
	line	111
	
l2934:
;RTC.c: 111: i2c_idle();
	call	_i2c_idle	;wreg free
	line	112
	
l71:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_start
	__end_of_i2c_start:
	signat	_i2c_start,89
	global	_i2c_rep_start

;; *************** function _i2c_rep_start *****************
;; Defined at:
;;		line 120 in file "RTC.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_i2c_idle
;; This function is called by:
;;		_read_ds1307
;; This function uses a non-reentrant model
;;
psect	text43,class=CODE,space=0,reloc=2,group=0
	line	120
global __ptext43
__ptext43:
psect	text43
	file	"RTC.c"
	line	120
	
_i2c_rep_start:
;incstack = 0
	callstack 26
	line	122
	
l2944:
;RTC.c: 122: RSEN = 1;
	bsf	c:(32297/8),(32297)&7	;volatile
	line	123
	
l2946:
;RTC.c: 123: i2c_idle();
	call	_i2c_idle	;wreg free
	line	124
	
l77:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_rep_start
	__end_of_i2c_rep_start:
	signat	_i2c_rep_start,89
	global	_i2c_read

;; *************** function _i2c_read *****************
;; Defined at:
;;		line 144 in file "RTC.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_i2c_no_ack
;;		_i2c_rx_mode
;; This function is called by:
;;		_read_ds1307
;; This function uses a non-reentrant model
;;
psect	text44,class=CODE,space=0,reloc=2,group=0
	line	144
global __ptext44
__ptext44:
psect	text44
	file	"RTC.c"
	line	144
	
_i2c_read:
;incstack = 0
	callstack 25
	line	146
	
l2948:
;RTC.c: 146: i2c_rx_mode();
	call	_i2c_rx_mode	;wreg free
	line	147
;RTC.c: 147: i2c_no_ack();
	call	_i2c_no_ack	;wreg free
	line	149
	
l2950:
;RTC.c: 149: return SSPBUF;
	movf	((c:4041))^0f00h,c,w	;volatile
	line	150
	
l89:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_read
	__end_of_i2c_read:
	signat	_i2c_read,89
	global	_i2c_rx_mode

;; *************** function _i2c_rx_mode *****************
;; Defined at:
;;		line 132 in file "RTC.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_i2c_idle
;; This function is called by:
;;		_i2c_read
;; This function uses a non-reentrant model
;;
psect	text45,class=CODE,space=0,reloc=2,group=0
	line	132
global __ptext45
__ptext45:
psect	text45
	file	"RTC.c"
	line	132
	
_i2c_rx_mode:
;incstack = 0
	callstack 25
	line	134
	
l2922:
;RTC.c: 134: RCEN = 1;
	bsf	c:(32299/8),(32299)&7	;volatile
	line	135
	
l2924:
;RTC.c: 135: i2c_idle();
	call	_i2c_idle	;wreg free
	line	136
	
l83:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_rx_mode
	__end_of_i2c_rx_mode:
	signat	_i2c_rx_mode,89
	global	_i2c_idle

;; *************** function _i2c_idle *****************
;; Defined at:
;;		line 94 in file "RTC.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_i2c_start
;;		_i2c_stop
;;		_i2c_rep_start
;;		_i2c_write
;;		_i2c_rx_mode
;; This function uses a non-reentrant model
;;
psect	text46,class=CODE,space=0,reloc=2,group=0
	line	94
global __ptext46
__ptext46:
psect	text46
	file	"RTC.c"
	line	94
	
_i2c_idle:
;incstack = 0
	callstack 26
	line	96
	
l2918:
;RTC.c: 96: while (!SSPIF);
	
l61:
	btfss	c:(31987/8),(31987)&7	;volatile
	goto	u1841
	goto	u1840
u1841:
	goto	l61
u1840:
	
l63:
	line	97
;RTC.c: 97: SSPIF = 0;
	bcf	c:(31987/8),(31987)&7	;volatile
	line	98
	
l64:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_idle
	__end_of_i2c_idle:
	signat	_i2c_idle,89
	global	_i2c_no_ack

;; *************** function _i2c_no_ack *****************
;; Defined at:
;;		line 138 in file "RTC.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_i2c_read
;; This function uses a non-reentrant model
;;
psect	text47,class=CODE,space=0,reloc=2,group=0
	line	138
global __ptext47
__ptext47:
psect	text47
	file	"RTC.c"
	line	138
	
_i2c_no_ack:
;incstack = 0
	callstack 26
	line	140
	
l2926:
;RTC.c: 140: ACKDT = 1;
	bsf	c:(32301/8),(32301)&7	;volatile
	line	141
;RTC.c: 141: ACKEN = 1;
	bsf	c:(32300/8),(32300)&7	;volatile
	line	142
	
l86:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_no_ack
	__end_of_i2c_no_ack:
	signat	_i2c_no_ack,89
	global	_clcd_putch

;; *************** function _clcd_putch *****************
;; Defined at:
;;		line 56 in file "CLCD.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     const unsigned char 
;;  addr            1   14[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1   15[COMRAM] const unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_clcd_write
;; This function is called by:
;;		_set_time
;;		_view_log
;;		_dashboard
;;		_change_password
;;		_password
;;		_display_menu
;; This function uses a non-reentrant model
;;
psect	text48,class=CODE,space=0,reloc=2,group=0
	file	"CLCD.c"
	line	56
global __ptext48
__ptext48:
psect	text48
	file	"CLCD.c"
	line	56
	
_clcd_putch:
;incstack = 0
	callstack 27
;clcd_putch@data stored from wreg
	movwf	((c:clcd_putch@data))^00h,c
	line	58
	
l3140:
;CLCD.c: 58: clcd_write(addr, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movf	((c:clcd_putch@addr))^00h,c,w
	
	call	_clcd_write
	line	59
;CLCD.c: 59: clcd_write(data, 1);
	movlw	low(01h)
	movwf	((c:clcd_write@control_bit))^00h,c
	movf	((c:clcd_putch@data))^00h,c,w
	
	call	_clcd_write
	line	60
	
l778:
	return	;funcret
	callstack 0
GLOBAL	__end_of_clcd_putch
	__end_of_clcd_putch:
	signat	_clcd_putch,8313
	global	_clcd_print

;; *************** function _clcd_print *****************
;; Defined at:
;;		line 46 in file "CLCD.c"
;; Parameters:    Size  Location     Type
;;  data            2    2[COMRAM] PTR const unsigned char 
;;		 -> STR_45(17), STR_44(17), STR_43(16), STR_42(14), 
;;		 -> STR_41(17), STR_40(14), STR_39(17), STR_38(17), 
;;		 -> STR_37(16), STR_36(14), STR_35(17), STR_34(14), 
;;		 -> STR_33(11), STR_32(14), STR_31(13), STR_30(8), 
;;		 -> STR_29(21), STR_28(17), STR_27(15), STR_26(11), 
;;		 -> STR_25(15), STR_24(8), STR_23(13), STR_22(15), 
;;		 -> STR_21(17), STR_20(17), STR_19(15), STR_18(17), 
;;		 -> EV(27), STR_17(16), STR_16(17), STR_15(15), 
;;		 -> logs(170), STR_14(17), STR_13(15), STR_12(16), 
;;		 -> STR_9(19), STR_8(17), STR_7(15), time(9), 
;;		 -> STR_6(17), STR_5(17), STR_4(16), STR_3(14), 
;;		 -> STR_2(17), STR_1(14), 
;;  addr            1    4[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         3       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_clcd_write
;; This function is called by:
;;		_set_time
;;		_download_log
;;		_view_log
;;		_dashboard
;;		_change_password
;;		_password
;;		_display_menu
;;		_clear_log
;; This function uses a non-reentrant model
;;
psect	text49,class=CODE,space=0,reloc=2,group=0
	line	46
global __ptext49
__ptext49:
psect	text49
	file	"CLCD.c"
	line	46
	
_clcd_print:
;incstack = 0
	callstack 27
	line	48
	
l3132:
;CLCD.c: 48: clcd_write(addr, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movf	((c:clcd_print@addr))^00h,c,w
	
	call	_clcd_write
	line	49
;CLCD.c: 49: while (*data != '\0')
	goto	l3138
	line	51
	
l3134:
;CLCD.c: 50: {;CLCD.c: 51: clcd_write(*data++, 1);
	movlw	low(01h)
	movwf	((c:clcd_write@control_bit))^00h,c
	movff	(c:clcd_print@data),tblptrl
	movff	(c:clcd_print@data+1),tblptrh
	clrf	tblptru
	
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	u2107
	tblrd	*
	
	movf	tablat,w
	bra	u2100
u2107:
	movff	tblptrl,fsr0l
	movff	tblptrh,fsr0h
	movf	indf0,w
u2100:
	
	call	_clcd_write
	
l3136:
	infsnz	((c:clcd_print@data))^00h,c
	incf	((c:clcd_print@data+1))^00h,c
	line	49
	
l3138:
	movff	(c:clcd_print@data),tblptrl
	movff	(c:clcd_print@data+1),tblptrh
	clrf	tblptru
	
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	u2117
	tblrd	*
	
	movf	tablat,w
	bra	u2110
u2117:
	movff	tblptrl,fsr0l
	movff	tblptrh,fsr0h
	movf	indf0,w
u2110:
	iorlw	0
	btfss	status,2
	goto	u2121
	goto	u2120
u2121:
	goto	l3134
u2120:
	line	54
	
l775:
	return	;funcret
	callstack 0
GLOBAL	__end_of_clcd_print
	__end_of_clcd_print:
	signat	_clcd_print,8313
	global	_clcd_write

;; *************** function _clcd_write *****************
;; Defined at:
;;		line 10 in file "CLCD.c"
;; Parameters:    Size  Location     Type
;;  byte            1    wreg     unsigned char 
;;  control_bit     1    0[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  byte            1    1[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_set_time
;;		_download_log
;;		_view_log
;;		_dashboard
;;		_change_password
;;		_password
;;		_display_menu
;;		_clear_log
;;		_init_clcd
;;		_clcd_print
;;		_clcd_putch
;; This function uses a non-reentrant model
;;
psect	text50,class=CODE,space=0,reloc=2,group=0
	line	10
global __ptext50
__ptext50:
psect	text50
	file	"CLCD.c"
	line	10
	
_clcd_write:
;incstack = 0
	callstack 28
;clcd_write@byte stored from wreg
	movwf	((c:clcd_write@byte))^00h,c
	line	12
	
l2958:
;CLCD.c: 12: RC1 = control_bit;
	btfsc	((c:clcd_write@control_bit))^00h,c,0
	goto	u1871
	goto	u1870
u1871:
	bsf	c:(31761/8),(31761)&7	;volatile
	goto	u1885
u1870:
	bcf	c:(31761/8),(31761)&7	;volatile
u1885:
	line	13
	
l2960:
;CLCD.c: 13: PORTD = byte;
	movff	(c:clcd_write@byte),(c:3971)	;volatile
	line	15
	
l2962:
;CLCD.c: 15: RC2 = 1;
	bsf	c:(31762/8),(31762)&7	;volatile
	line	16
	
l2964:
;CLCD.c: 16: RC2 = 0;
	bcf	c:(31762/8),(31762)&7	;volatile
	line	18
	
l2966:
;CLCD.c: 18: TRISD7 = 1;
	bsf	c:(31919/8),(31919)&7	;volatile
	line	19
	
l2968:
;CLCD.c: 19: RC0 = 1;
	bsf	c:(31760/8),(31760)&7	;volatile
	line	20
	
l2970:
;CLCD.c: 20: RC1 = 0;
	bcf	c:(31761/8),(31761)&7	;volatile
	line	24
	
l2972:
;CLCD.c: 23: {;CLCD.c: 24: RC2 = 1;
	bsf	c:(31762/8),(31762)&7	;volatile
	line	25
	
l2974:
;CLCD.c: 25: RC2 = 0;
	bcf	c:(31762/8),(31762)&7	;volatile
	line	26
	
l2976:
;CLCD.c: 26: } while (RD7);
	btfsc	c:(31775/8),(31775)&7	;volatile
	goto	u1891
	goto	u1890
u1891:
	goto	l2972
u1890:
	
l765:
	line	28
;CLCD.c: 28: RC0 = 0;
	bcf	c:(31760/8),(31760)&7	;volatile
	line	29
;CLCD.c: 29: TRISD7 = 0;
	bcf	c:(31919/8),(31919)&7	;volatile
	line	30
	
l766:
	return	;funcret
	callstack 0
GLOBAL	__end_of_clcd_write
	__end_of_clcd_write:
	signat	_clcd_write,8313
	global	___lwtoft

;; *************** function ___lwtoft *****************
;; Defined at:
;;		line 28 in file "C:\Program Files\Microchip\xc8\v2.41\pic\sources\c90\common\lwtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    8[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    8[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         3       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_dashboard
;; This function uses a non-reentrant model
;;
psect	text51,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c90\common\lwtoft.c"
	line	28
global __ptext51
__ptext51:
psect	text51
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c90\common\lwtoft.c"
	line	28
	
___lwtoft:
;incstack = 0
	callstack 28
	line	30
	
l3920:
	movff	(c:___lwtoft@c),(c:___ftpack@arg)
	movff	(c:___lwtoft@c+1),(c:___ftpack@arg+1)
	clrf	((c:___ftpack@arg+2))^00h,c
	movlw	low(08Eh)
	movwf	((c:___ftpack@exp))^00h,c
	movlw	low(0)
	movwf	((c:___ftpack@sign))^00h,c
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___lwtoft)
	movff	1+?___ftpack,(c:?___lwtoft+1)
	movff	2+?___ftpack,(c:?___lwtoft+2)
	line	31
	
l1350:
	return	;funcret
	callstack 0
GLOBAL	__end_of___lwtoft
	__end_of___lwtoft:
	signat	___lwtoft,4219
	global	___fttol

;; *************** function ___fttol *****************
;; Defined at:
;;		line 44 in file "C:\Program Files\Microchip\xc8\v2.41\pic\sources\c90\common\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3   26[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   36[COMRAM] unsigned long 
;;  exp1            1   40[COMRAM] unsigned char 
;;  sign1           1   35[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   26[COMRAM] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0
;;      Temps:          5       0       0       0       0       0       0
;;      Totals:        15       0       0       0       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_dashboard
;; This function uses a non-reentrant model
;;
psect	text52,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c90\common\fttol.c"
	line	44
global __ptext52
__ptext52:
psect	text52
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c90\common\fttol.c"
	line	44
	
___fttol:
;incstack = 0
	callstack 29
	line	49
	
l3874:
	movff	(c:___fttol@f1+2),??___fttol+0+0
	clrf	(??___fttol+0+0+1)^00h,c
	clrf	(??___fttol+0+0+2)^00h,c
	rlcf	((c:___fttol@f1+1))^00h,c,w
	rlcf	(??___fttol+0+0)^00h,c
	bnc	u3201
	bsf	(??___fttol+0+0+1)^00h,c,0
u3201:
	movf	(??___fttol+0+0)^00h,c,w
	movwf	((c:___fttol@exp1))^00h,c
	movf	((c:___fttol@exp1))^00h,c,w
	btfss	status,2
	goto	u3211
	goto	u3210
u3211:
	goto	l3880
u3210:
	line	50
	
l3876:
	movlw	low(0)
	movwf	((c:?___fttol))^00h,c
	movlw	high(0)
	movwf	((c:?___fttol+1))^00h,c
	movlw	low highword(0)
	movwf	((c:?___fttol+2))^00h,c
	movlw	high highword(0)
	movwf	((c:?___fttol+3))^00h,c
	goto	l1223
	line	51
	
l3880:
	movlw	(017h)&0ffh
	movwf	(??___fttol+0+0)^00h,c
	movff	(c:___fttol@f1),??___fttol+1+0
	movff	(c:___fttol@f1+1),??___fttol+1+0+1
	movff	(c:___fttol@f1+2),??___fttol+1+0+2
	incf	((??___fttol+0+0))^00h,c,w
	movwf	(??___fttol+4+0)^00h,c
	goto	u3220
u3225:
	bcf	status,0
	rrcf	(??___fttol+1+2)^00h,c
	rrcf	(??___fttol+1+1)^00h,c
	rrcf	(??___fttol+1+0)^00h,c
u3220:
	decfsz	(??___fttol+4+0)^00h,c
	goto	u3225
	movf	(??___fttol+1+0)^00h,c,w
	movwf	((c:___fttol@sign1))^00h,c
	line	52
	
l3882:
	bsf	(0+(15/8)+(c:___fttol@f1))^00h,c,(15)&7
	line	53
	
l3884:
	movlw	low(0FFFFh)
	andwf	((c:___fttol@f1))^00h,c
	movlw	high(0FFFFh)
	andwf	((c:___fttol@f1+1))^00h,c
	movlw	low highword(0FFFFh)
	andwf	((c:___fttol@f1+2))^00h,c

	line	54
	
l3886:
	movf	((c:___fttol@f1))^00h,c,w
	movwf	((c:___fttol@lval))^00h,c
	movf	((c:___fttol@f1+1))^00h,c,w
	movwf	1+((c:___fttol@lval))^00h,c
	
	movf	((c:___fttol@f1+2))^00h,c,w
	movwf	2+((c:___fttol@lval))^00h,c
	
	clrf	3+((c:___fttol@lval))^00h,c
	
	line	55
	
l3888:
	movlw	(08Eh)&0ffh
	subwf	((c:___fttol@exp1))^00h,c
	line	56
	
l3890:
	btfsc	((c:___fttol@exp1))^00h,c,7
	goto	u3230
	goto	u3231

u3231:
	goto	l3902
u3230:
	line	57
	
l3892:
		movf	((c:___fttol@exp1))^00h,c,w
	xorlw	80h
	addlw	-(80h^-15)
	btfsc	status,0
	goto	u3241
	goto	u3240

u3241:
	goto	l3898
u3240:
	goto	l3876
	line	60
	
l3898:
	bcf	status,0
	rrcf	((c:___fttol@lval+3))^00h,c
	rrcf	((c:___fttol@lval+2))^00h,c
	rrcf	((c:___fttol@lval+1))^00h,c
	rrcf	((c:___fttol@lval))^00h,c
	line	61
	
l3900:
	incfsz	((c:___fttol@exp1))^00h,c
	
	goto	l3898
	goto	l3912
	line	63
	
l3902:
		movlw	018h-1
	cpfsgt	((c:___fttol@exp1))^00h,c
	goto	u3251
	goto	u3250

u3251:
	goto	l3910
u3250:
	goto	l3876
	line	66
	
l3908:
	bcf	status,0
	rlcf	((c:___fttol@lval))^00h,c
	rlcf	((c:___fttol@lval+1))^00h,c
	rlcf	((c:___fttol@lval+2))^00h,c
	rlcf	((c:___fttol@lval+3))^00h,c
	line	67
	decf	((c:___fttol@exp1))^00h,c
	line	65
	
l3910:
	movf	((c:___fttol@exp1))^00h,c,w
	btfss	status,2
	goto	u3261
	goto	u3260
u3261:
	goto	l3908
u3260:
	line	70
	
l3912:
	movf	((c:___fttol@sign1))^00h,c,w
	btfsc	status,2
	goto	u3271
	goto	u3270
u3271:
	goto	l3916
u3270:
	line	71
	
l3914:
	comf	((c:___fttol@lval+3))^00h,c
	comf	((c:___fttol@lval+2))^00h,c
	comf	((c:___fttol@lval+1))^00h,c
	negf	((c:___fttol@lval))^00h,c
	movlw	0
	addwfc	((c:___fttol@lval+1))^00h,c
	addwfc	((c:___fttol@lval+2))^00h,c
	addwfc	((c:___fttol@lval+3))^00h,c
	line	72
	
l3916:
	movff	(c:___fttol@lval),(c:?___fttol)
	movff	(c:___fttol@lval+1),(c:?___fttol+1)
	movff	(c:___fttol@lval+2),(c:?___fttol+2)
	movff	(c:___fttol@lval+3),(c:?___fttol+3)
	line	73
	
l1223:
	return	;funcret
	callstack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
	signat	___fttol,4220
	global	___ftdiv

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 54 in file "C:\Program Files\Microchip\xc8\v2.41\pic\sources\c90\common\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f1              3   11[COMRAM] float 
;;  f2              3   14[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   21[COMRAM] float 
;;  sign            1   25[COMRAM] unsigned char 
;;  exp             1   24[COMRAM] unsigned char 
;;  cntr            1   20[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   11[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         6       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0
;;      Totals:        15       0       0       0       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_dashboard
;; This function uses a non-reentrant model
;;
psect	text53,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c90\common\ftdiv.c"
	line	54
global __ptext53
__ptext53:
psect	text53
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c90\common\ftdiv.c"
	line	54
	
___ftdiv:
;incstack = 0
	callstack 28
	line	63
	
l3748:
	movff	(c:___ftdiv@f1+2),??___ftdiv+0+0
	clrf	(??___ftdiv+0+0+1)^00h,c
	clrf	(??___ftdiv+0+0+2)^00h,c
	rlcf	((c:___ftdiv@f1+1))^00h,c,w
	rlcf	(??___ftdiv+0+0)^00h,c
	bnc	u3031
	bsf	(??___ftdiv+0+0+1)^00h,c,0
u3031:
	movf	(??___ftdiv+0+0)^00h,c,w
	movwf	((c:___ftdiv@exp))^00h,c
	movf	((c:___ftdiv@exp))^00h,c,w
	btfss	status,2
	goto	u3041
	goto	u3040
u3041:
	goto	l3754
u3040:
	line	64
	
l3750:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftdiv))^00h,c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftdiv+1))^00h,c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftdiv+2))^00h,c

	goto	l1187
	line	65
	
l3754:
	movff	(c:___ftdiv@f2+2),??___ftdiv+0+0
	clrf	(??___ftdiv+0+0+1)^00h,c
	clrf	(??___ftdiv+0+0+2)^00h,c
	rlcf	((c:___ftdiv@f2+1))^00h,c,w
	rlcf	(??___ftdiv+0+0)^00h,c
	bnc	u3051
	bsf	(??___ftdiv+0+0+1)^00h,c,0
u3051:
	movf	(??___ftdiv+0+0)^00h,c,w
	movwf	((c:___ftdiv@sign))^00h,c
	movf	((c:___ftdiv@sign))^00h,c,w
	btfss	status,2
	goto	u3061
	goto	u3060
u3061:
	goto	l3760
u3060:
	line	66
	
l3756:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftdiv))^00h,c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftdiv+1))^00h,c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftdiv+2))^00h,c

	goto	l1187
	line	67
	
l3760:
	movlw	low(0)
	movwf	((c:___ftdiv@f3))^00h,c
	movlw	high(0)
	movwf	((c:___ftdiv@f3+1))^00h,c
	movlw	low highword(0)
	movwf	((c:___ftdiv@f3+2))^00h,c

	line	68
	
l3762:
	movf	((c:___ftdiv@sign))^00h,c,w
	addlw	low(089h)
	subwf	((c:___ftdiv@exp))^00h,c
	line	69
	
l3764:
	movff	0+((c:___ftdiv@f1)+02h),(c:___ftdiv@sign)
	line	70
	
l3766:
	movf	(0+((c:___ftdiv@f2)+02h))^00h,c,w
	xorwf	((c:___ftdiv@sign))^00h,c
	line	71
	
l3768:
	movlw	(080h)&0ffh
	andwf	((c:___ftdiv@sign))^00h,c
	line	72
	
l3770:
	bsf	(0+(15/8)+(c:___ftdiv@f1))^00h,c,(15)&7
	line	73
	
l3772:
	movlw	low(0FFFFh)
	andwf	((c:___ftdiv@f1))^00h,c
	movlw	high(0FFFFh)
	andwf	((c:___ftdiv@f1+1))^00h,c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftdiv@f1+2))^00h,c

	line	74
	
l3774:
	bsf	(0+(15/8)+(c:___ftdiv@f2))^00h,c,(15)&7
	line	75
	
l3776:
	movlw	low(0FFFFh)
	andwf	((c:___ftdiv@f2))^00h,c
	movlw	high(0FFFFh)
	andwf	((c:___ftdiv@f2+1))^00h,c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftdiv@f2+2))^00h,c

	line	76
	
l3778:
	movlw	low(018h)
	movwf	((c:___ftdiv@cntr))^00h,c
	line	78
	
l3780:
	bcf	status,0
	rlcf	((c:___ftdiv@f3))^00h,c
	rlcf	((c:___ftdiv@f3+1))^00h,c
	rlcf	((c:___ftdiv@f3+2))^00h,c
	line	79
	
l3782:
		movf	((c:___ftdiv@f2))^00h,c,w
	subwf	((c:___ftdiv@f1))^00h,c,w
	movf	((c:___ftdiv@f2+1))^00h,c,w
	subwfb	((c:___ftdiv@f1+1))^00h,c,w
	movf	((c:___ftdiv@f2+2))^00h,c,w
	subwfb	((c:___ftdiv@f1+2))^00h,c,w
	btfss	status,0
	goto	u3071
	goto	u3070

u3071:
	goto	l1190
u3070:
	line	80
	
l3784:
	movf	((c:___ftdiv@f2))^00h,c,w
	subwf	((c:___ftdiv@f1))^00h,c
	movf	((c:___ftdiv@f2+1))^00h,c,w
	subwfb	((c:___ftdiv@f1+1))^00h,c
	movf	((c:___ftdiv@f2+2))^00h,c,w
	subwfb	((c:___ftdiv@f1+2))^00h,c

	line	81
	
l3786:
	bsf	(0+(0/8)+(c:___ftdiv@f3))^00h,c,(0)&7
	line	82
	
l1190:
	line	83
	bcf	status,0
	rlcf	((c:___ftdiv@f1))^00h,c
	rlcf	((c:___ftdiv@f1+1))^00h,c
	rlcf	((c:___ftdiv@f1+2))^00h,c
	line	84
	
l3788:
	decfsz	((c:___ftdiv@cntr))^00h,c
	
	goto	l3780
	line	85
	
l3790:
	movff	(c:___ftdiv@f3),(c:___ftpack@arg)
	movff	(c:___ftdiv@f3+1),(c:___ftpack@arg+1)
	movff	(c:___ftdiv@f3+2),(c:___ftpack@arg+2)
	movff	(c:___ftdiv@exp),(c:___ftpack@exp)
	movff	(c:___ftdiv@sign),(c:___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___ftdiv)
	movff	1+?___ftpack,(c:?___ftdiv+1)
	movff	2+?___ftpack,(c:?___ftdiv+2)
	line	86
	
l1187:
	return	;funcret
	callstack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
	signat	___ftdiv,8315
	global	___ftpack

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 62 in file "C:\Program Files\Microchip\xc8\v2.41\pic\sources\c90\common\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[COMRAM] unsigned um
;;  exp             1    3[COMRAM] unsigned char 
;;  sign            1    4[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         5       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___ftdiv
;;		___lwtoft
;; This function uses a non-reentrant model
;;
psect	text54,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c90\common\float.c"
	line	62
global __ptext54
__ptext54:
psect	text54
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c90\common\float.c"
	line	62
	
___ftpack:
;incstack = 0
	callstack 28
	line	64
	
l3182:
	movf	((c:___ftpack@exp))^00h,c,w
	btfsc	status,2
	goto	u2161
	goto	u2160
u2161:
	goto	l3186
u2160:
	
l3184:
	movf	((c:___ftpack@arg))^00h,c,w
iorwf	((c:___ftpack@arg+1))^00h,c,w
iorwf	((c:___ftpack@arg+2))^00h,c,w
	btfss	status,2
	goto	u2171
	goto	u2170

u2171:
	goto	l3192
u2170:
	line	65
	
l3186:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftpack))^00h,c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftpack+1))^00h,c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftpack+2))^00h,c

	goto	l1121
	line	67
	
l3190:
	incf	((c:___ftpack@exp))^00h,c
	line	68
	bcf	status,0
	rrcf	((c:___ftpack@arg+2))^00h,c
	rrcf	((c:___ftpack@arg+1))^00h,c
	rrcf	((c:___ftpack@arg))^00h,c
	line	66
	
l3192:
	movlw	low(0FE0000h)
	andwf	((c:___ftpack@arg))^00h,c,w
	movwf	(??___ftpack+0+0)^00h,c
	movlw	0
	andwf	((c:___ftpack@arg+1))^00h,c,w
	movwf	1+(??___ftpack+0+0)^00h,c
	
	movlw	0FEh
	andwf	((c:___ftpack@arg+2))^00h,c,w
	movwf	2+(??___ftpack+0+0)^00h,c

	movf	(??___ftpack+0+0)^00h,c,w
iorwf	(??___ftpack+0+1)^00h,c,w
iorwf	(??___ftpack+0+2)^00h,c,w
	btfss	status,2
	goto	u2181
	goto	u2180

u2181:
	goto	l3190
u2180:
	goto	l3198
	line	71
	
l3194:
	incf	((c:___ftpack@exp))^00h,c
	line	72
	
l3196:
	movlw	low(01h)
	addwf	((c:___ftpack@arg))^00h,c
	movlw	high(01h)
	addwfc	((c:___ftpack@arg+1))^00h,c
	movlw	low highword(01h)
	addwfc	((c:___ftpack@arg+2))^00h,c

	line	73
	bcf	status,0
	rrcf	((c:___ftpack@arg+2))^00h,c
	rrcf	((c:___ftpack@arg+1))^00h,c
	rrcf	((c:___ftpack@arg))^00h,c
	line	70
	
l3198:
	movlw	low(0FF0000h)
	andwf	((c:___ftpack@arg))^00h,c,w
	movwf	(??___ftpack+0+0)^00h,c
	movlw	0
	andwf	((c:___ftpack@arg+1))^00h,c,w
	movwf	1+(??___ftpack+0+0)^00h,c
	
	movlw	0FFh
	andwf	((c:___ftpack@arg+2))^00h,c,w
	movwf	2+(??___ftpack+0+0)^00h,c

	movf	(??___ftpack+0+0)^00h,c,w
iorwf	(??___ftpack+0+1)^00h,c,w
iorwf	(??___ftpack+0+2)^00h,c,w
	btfss	status,2
	goto	u2191
	goto	u2190

u2191:
	goto	l3194
u2190:
	goto	l3202
	line	76
	
l3200:
	decf	((c:___ftpack@exp))^00h,c
	line	77
	bcf	status,0
	rlcf	((c:___ftpack@arg))^00h,c
	rlcf	((c:___ftpack@arg+1))^00h,c
	rlcf	((c:___ftpack@arg+2))^00h,c
	line	75
	
l3202:
	
	btfsc	((c:___ftpack@arg+1))^00h,c,(15)&7
	goto	u2201
	goto	u2200
u2201:
	goto	l1132
u2200:
	
l3204:
		movlw	02h-0
	cpfslt	((c:___ftpack@exp))^00h,c
	goto	u2211
	goto	u2210

u2211:
	goto	l3200
u2210:
	
l1132:
	line	79
	
	btfsc	((c:___ftpack@exp))^00h,c,(0)&7
	goto	u2221
	goto	u2220
u2221:
	goto	l3208
u2220:
	line	80
	
l3206:
	bcf	(0+(15/8)+(c:___ftpack@arg))^00h,c,(15)&7
	line	81
	
l3208:
	bcf status,0
	rrcf	((c:___ftpack@exp))^00h,c

	line	82
	movf	((c:___ftpack@exp))^00h,c,w
	iorwf	((c:___ftpack@arg+2))^00h,c

	line	83
	
l3210:
	movf	((c:___ftpack@sign))^00h,c,w
	btfsc	status,2
	goto	u2231
	goto	u2230
u2231:
	goto	l3214
u2230:
	line	84
	
l3212:
	bsf	(0+(23/8)+(c:___ftpack@arg))^00h,c,(23)&7
	line	85
	
l3214:
	movff	(c:___ftpack@arg),(c:?___ftpack)
	movff	(c:___ftpack@arg+1),(c:?___ftpack+1)
	movff	(c:___ftpack@arg+2),(c:?___ftpack+2)
	line	86
	
l1121:
	return	;funcret
	callstack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
psect	mediumconst
	db 0	; dummy byte at the end
	global	__mediumconst
	GLOBAL	__activetblptr
__activetblptr	EQU	2
	psect	intsave_regs,class=BIGRAM,space=1,noexec
	PSECT	rparam,class=COMRAM,space=1,noexec
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
	GLOBAL	___rparam_used
	___rparam_used EQU 1
	GLOBAL	___param_bank
	___param_bank EQU 0
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
	end
