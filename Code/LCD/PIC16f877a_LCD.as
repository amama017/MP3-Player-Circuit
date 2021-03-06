opt subtitle "HI-TECH Software Omniscient Code Generator (PRO mode) build 5239"

opt pagewidth 120

	opt pm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
;COMMON:	_main->_lcd_init
;BANK0:	_lcd_init->_lcd_write
;COMMON:	_lcd_write->__delay
;COMMON:	_lcd_init->_lcd_clear
;COMMON:	_lcd_clear->_lcd_write
;COMMON:	_lcd_write->__delay
;BANK0:	_lcd_clear->_lcd_write
;COMMON:	_lcd_write->__delay
;BANK0:	_main->_lcd_init
;BANK0:	_lcd_init->_lcd_write
;COMMON:	_lcd_write->__delay
;COMMON:	_lcd_init->_lcd_clear
;COMMON:	_lcd_clear->_lcd_write
;COMMON:	_lcd_write->__delay
;BANK0:	_lcd_clear->_lcd_write
;COMMON:	_lcd_write->__delay
	FNCALL	_main,_lcd_init
	FNCALL	_main,_lcd_line1
	FNCALL	_main,_lcd_string
	FNCALL	_main,_lcd_line2
	FNCALL	_lcd_string,_lcd_write
	FNCALL	_lcd_line1,_lcd_write
	FNCALL	_lcd_init,_lcd_write
	FNCALL	_lcd_init,_lcd_clear
	FNCALL	_lcd_line2,_lcd_write
	FNCALL	_lcd_clear,_lcd_write
	FNROOT	_main
	global	_ADCON0
psect	text49,local,class=CODE,delta=2
global __ptext49
__ptext49:
_ADCON0  equ     31
	global	_ADRESH
_ADRESH  equ     30
	global	_CCP1CON
_CCP1CON  equ     23
	global	_CCP2CON
_CCP2CON  equ     29
	global	_CCPR1H
_CCPR1H  equ     22
	global	_CCPR1L
_CCPR1L  equ     21
	global	_CCPR2H
_CCPR2H  equ     28
	global	_CCPR2L
_CCPR2L  equ     27
	global	_FSR
_FSR  equ     4
	global	_INDF
_INDF  equ     0
	global	_INTCON
_INTCON  equ     11
	global	_PCL
_PCL  equ     2
	global	_PCLATH
_PCLATH  equ     10
	global	_PIR1
_PIR1  equ     12
	global	_PIR2
_PIR2  equ     13
	global	_PORTA
_PORTA  equ     5
	global	_PORTB
_PORTB  equ     6
	global	_PORTC
_PORTC  equ     7
	global	_PORTD
_PORTD  equ     8
	global	_PORTE
_PORTE  equ     9
	global	_RCREG
_RCREG  equ     26
	global	_RCSTA
_RCSTA  equ     24
	global	_SSPBUF
_SSPBUF  equ     19
	global	_SSPCON
_SSPCON  equ     20
	global	_STATUS
_STATUS  equ     3
	global	_T1CON
_T1CON  equ     16
	global	_T2CON
_T2CON  equ     18
	global	_TMR0
_TMR0  equ     1
	global	_TMR1H
_TMR1H  equ     15
	global	_TMR1L
_TMR1L  equ     14
	global	_TMR2
_TMR2  equ     17
	global	_TXREG
_TXREG  equ     25
	global	_ADCS0
_ADCS0  equ     254
	global	_ADCS1
_ADCS1  equ     255
	global	_ADDEN
_ADDEN  equ     195
	global	_ADGO
_ADGO  equ     250
	global	_ADIF
_ADIF  equ     102
	global	_ADON
_ADON  equ     248
	global	_BCLIF
_BCLIF  equ     107
	global	_CARRY
_CARRY  equ     24
	global	_CCP1IF
_CCP1IF  equ     98
	global	_CCP1M0
_CCP1M0  equ     184
	global	_CCP1M1
_CCP1M1  equ     185
	global	_CCP1M2
_CCP1M2  equ     186
	global	_CCP1M3
_CCP1M3  equ     187
	global	_CCP1X
_CCP1X  equ     189
	global	_CCP1Y
_CCP1Y  equ     188
	global	_CCP2IF
_CCP2IF  equ     104
	global	_CCP2M0
_CCP2M0  equ     232
	global	_CCP2M1
_CCP2M1  equ     233
	global	_CCP2M2
_CCP2M2  equ     234
	global	_CCP2M3
_CCP2M3  equ     235
	global	_CCP2X
_CCP2X  equ     237
	global	_CCP2Y
_CCP2Y  equ     236
	global	_CHS0
_CHS0  equ     251
	global	_CHS1
_CHS1  equ     252
	global	_CHS2
_CHS2  equ     253
	global	_CKP
_CKP  equ     164
	global	_CMIF
_CMIF  equ     110
	global	_CREN
_CREN  equ     196
	global	_DC
_DC  equ     25
	global	_EEIF
_EEIF  equ     108
	global	_FERR
_FERR  equ     194
	global	_GIE
_GIE  equ     95
	global	_GODONE
_GODONE  equ     250
	global	_INTE
_INTE  equ     92
	global	_INTF
_INTF  equ     89
	global	_IRP
_IRP  equ     31
	global	_OERR
_OERR  equ     193
	global	_PD
_PD  equ     27
	global	_PEIE
_PEIE  equ     94
	global	_PSPIF
_PSPIF  equ     103
	global	_RA0
_RA0  equ     40
	global	_RA1
_RA1  equ     41
	global	_RA2
_RA2  equ     42
	global	_RA3
_RA3  equ     43
	global	_RA4
_RA4  equ     44
	global	_RA5
_RA5  equ     45
	global	_RB0
_RB0  equ     48
	global	_RB1
_RB1  equ     49
	global	_RB2
_RB2  equ     50
	global	_RB3
_RB3  equ     51
	global	_RB4
_RB4  equ     52
	global	_RB5
_RB5  equ     53
	global	_RB6
_RB6  equ     54
	global	_RB7
_RB7  equ     55
	global	_RBIE
_RBIE  equ     91
	global	_RBIF
_RBIF  equ     88
	global	_RC0
_RC0  equ     56
	global	_RC1
_RC1  equ     57
	global	_RC2
_RC2  equ     58
	global	_RC3
_RC3  equ     59
	global	_RC4
_RC4  equ     60
	global	_RC5
_RC5  equ     61
	global	_RC6
_RC6  equ     62
	global	_RC7
_RC7  equ     63
	global	_RCIF
_RCIF  equ     101
	global	_RD0
_RD0  equ     64
	global	_RD1
_RD1  equ     65
	global	_RD2
_RD2  equ     66
	global	_RD3
_RD3  equ     67
	global	_RD4
_RD4  equ     68
	global	_RD5
_RD5  equ     69
	global	_RD6
_RD6  equ     70
	global	_RD7
_RD7  equ     71
	global	_RE0
_RE0  equ     72
	global	_RE1
_RE1  equ     73
	global	_RE2
_RE2  equ     74
	global	_RP0
_RP0  equ     29
	global	_RP1
_RP1  equ     30
	global	_RX9
_RX9  equ     198
	global	_RX9D
_RX9D  equ     192
	global	_SPEN
_SPEN  equ     199
	global	_SREN
_SREN  equ     197
	global	_SSPEN
_SSPEN  equ     165
	global	_SSPIF
_SSPIF  equ     99
	global	_SSPM0
_SSPM0  equ     160
	global	_SSPM1
_SSPM1  equ     161
	global	_SSPM2
_SSPM2  equ     162
	global	_SSPM3
_SSPM3  equ     163
	global	_SSPOV
_SSPOV  equ     166
	global	_T0IE
_T0IE  equ     93
	global	_T0IF
_T0IF  equ     90
	global	_T1CKPS0
_T1CKPS0  equ     132
	global	_T1CKPS1
_T1CKPS1  equ     133
	global	_T1OSCEN
_T1OSCEN  equ     131
	global	_T1SYNC
_T1SYNC  equ     130
	global	_T2CKPS0
_T2CKPS0  equ     144
	global	_T2CKPS1
_T2CKPS1  equ     145
	global	_TMR0IE
_TMR0IE  equ     93
	global	_TMR0IF
_TMR0IF  equ     90
	global	_TMR1CS
_TMR1CS  equ     129
	global	_TMR1IF
_TMR1IF  equ     96
	global	_TMR1ON
_TMR1ON  equ     128
	global	_TMR2IF
_TMR2IF  equ     97
	global	_TMR2ON
_TMR2ON  equ     146
	global	_TO
_TO  equ     28
	global	_TOUTPS0
_TOUTPS0  equ     147
	global	_TOUTPS1
_TOUTPS1  equ     148
	global	_TOUTPS2
_TOUTPS2  equ     149
	global	_TOUTPS3
_TOUTPS3  equ     150
	global	_TXIF
_TXIF  equ     100
	global	_WCOL
_WCOL  equ     167
	global	_ZERO
_ZERO  equ     26
	global	_ADCON1
_ADCON1  equ     159
	global	_ADRESL
_ADRESL  equ     158
	global	_CMCON
_CMCON  equ     156
	global	_CVRCON
_CVRCON  equ     157
	global	_OPTION
_OPTION  equ     129
	global	_PCON
_PCON  equ     142
	global	_PIE1
_PIE1  equ     140
	global	_PIE2
_PIE2  equ     141
	global	_PR2
_PR2  equ     146
	global	_SPBRG
_SPBRG  equ     153
	global	_SSPADD
_SSPADD  equ     147
	global	_SSPCON2
_SSPCON2  equ     145
	global	_SSPSTAT
_SSPSTAT  equ     148
	global	_TRISA
_TRISA  equ     133
	global	_TRISB
_TRISB  equ     134
	global	_TRISC
_TRISC  equ     135
	global	_TRISD
_TRISD  equ     136
	global	_TRISE
_TRISE  equ     137
	global	_TXSTA
_TXSTA  equ     152
	global	_ACKDT
_ACKDT  equ     1165
	global	_ACKEN
_ACKEN  equ     1164
	global	_ACKSTAT
_ACKSTAT  equ     1166
	global	_ADCS2
_ADCS2  equ     1278
	global	_ADFM
_ADFM  equ     1279
	global	_ADIE
_ADIE  equ     1126
	global	_BCLIE
_BCLIE  equ     1131
	global	_BF
_BF  equ     1184
	global	_BOR
_BOR  equ     1136
	global	_BRGH
_BRGH  equ     1218
	global	_C1INV
_C1INV  equ     1252
	global	_C1OUT
_C1OUT  equ     1254
	global	_C2INV
_C2INV  equ     1253
	global	_C2OUT
_C2OUT  equ     1255
	global	_CCP1IE
_CCP1IE  equ     1122
	global	_CCP2IE
_CCP2IE  equ     1128
	global	_CIS
_CIS  equ     1251
	global	_CKE
_CKE  equ     1190
	global	_CM0
_CM0  equ     1248
	global	_CM1
_CM1  equ     1249
	global	_CM2
_CM2  equ     1250
	global	_CMIE
_CMIE  equ     1134
	global	_CSRC
_CSRC  equ     1223
	global	_CVR0
_CVR0  equ     1256
	global	_CVR1
_CVR1  equ     1257
	global	_CVR2
_CVR2  equ     1258
	global	_CVR3
_CVR3  equ     1259
	global	_CVREN
_CVREN  equ     1263
	global	_CVROE
_CVROE  equ     1262
	global	_CVRR
_CVRR  equ     1261
	global	_DA
_DA  equ     1189
	global	_EEIE
_EEIE  equ     1132
	global	_GCEN
_GCEN  equ     1167
	global	_IBF
_IBF  equ     1103
	global	_IBOV
_IBOV  equ     1101
	global	_INTEDG
_INTEDG  equ     1038
	global	_OBF
_OBF  equ     1102
	global	_PCFG0
_PCFG0  equ     1272
	global	_PCFG1
_PCFG1  equ     1273
	global	_PCFG2
_PCFG2  equ     1274
	global	_PCFG3
_PCFG3  equ     1275
	global	_PEN
_PEN  equ     1162
	global	_POR
_POR  equ     1137
	global	_PS0
_PS0  equ     1032
	global	_PS1
_PS1  equ     1033
	global	_PS2
_PS2  equ     1034
	global	_PSA
_PSA  equ     1035
	global	_PSPIE
_PSPIE  equ     1127
	global	_PSPMODE
_PSPMODE  equ     1100
	global	_RBPU
_RBPU  equ     1039
	global	_RCEN
_RCEN  equ     1163
	global	_RCIE
_RCIE  equ     1125
	global	_RSEN
_RSEN  equ     1161
	global	_RW
_RW  equ     1186
	global	_SEN
_SEN  equ     1160
	global	_SMP
_SMP  equ     1191
	global	_SSPIE
_SSPIE  equ     1123
	global	_START
_START  equ     1187
	global	_STOP
_STOP  equ     1188
	global	_SYNC
_SYNC  equ     1220
	global	_T0CS
_T0CS  equ     1037
	global	_T0SE
_T0SE  equ     1036
	global	_TMR1IE
_TMR1IE  equ     1120
	global	_TMR2IE
_TMR2IE  equ     1121
	global	_TRISA0
_TRISA0  equ     1064
	global	_TRISA1
_TRISA1  equ     1065
	global	_TRISA2
_TRISA2  equ     1066
	global	_TRISA3
_TRISA3  equ     1067
	global	_TRISA4
_TRISA4  equ     1068
	global	_TRISA5
_TRISA5  equ     1069
	global	_TRISB0
_TRISB0  equ     1072
	global	_TRISB1
_TRISB1  equ     1073
	global	_TRISB2
_TRISB2  equ     1074
	global	_TRISB3
_TRISB3  equ     1075
	global	_TRISB4
_TRISB4  equ     1076
	global	_TRISB5
_TRISB5  equ     1077
	global	_TRISB6
_TRISB6  equ     1078
	global	_TRISB7
_TRISB7  equ     1079
	global	_TRISC0
_TRISC0  equ     1080
	global	_TRISC1
_TRISC1  equ     1081
	global	_TRISC2
_TRISC2  equ     1082
	global	_TRISC3
_TRISC3  equ     1083
	global	_TRISC4
_TRISC4  equ     1084
	global	_TRISC5
_TRISC5  equ     1085
	global	_TRISC6
_TRISC6  equ     1086
	global	_TRISC7
_TRISC7  equ     1087
	global	_TRISD0
_TRISD0  equ     1088
	global	_TRISD1
_TRISD1  equ     1089
	global	_TRISD2
_TRISD2  equ     1090
	global	_TRISD3
_TRISD3  equ     1091
	global	_TRISD4
_TRISD4  equ     1092
	global	_TRISD5
_TRISD5  equ     1093
	global	_TRISD6
_TRISD6  equ     1094
	global	_TRISD7
_TRISD7  equ     1095
	global	_TRISE0
_TRISE0  equ     1096
	global	_TRISE1
_TRISE1  equ     1097
	global	_TRISE2
_TRISE2  equ     1098
	global	_TRMT
_TRMT  equ     1217
	global	_TX9
_TX9  equ     1222
	global	_TX9D
_TX9D  equ     1216
	global	_TXEN
_TXEN  equ     1221
	global	_TXIE
_TXIE  equ     1124
	global	_UA
_UA  equ     1185
	global	_EEADR
_EEADR  equ     269
	global	_EEADRH
_EEADRH  equ     271
	global	_EEADRL
_EEADRL  equ     269
	global	_EEDATA
_EEDATA  equ     268
	global	_EEDATH
_EEDATH  equ     270
	global	_EECON1
_EECON1  equ     396
	global	_EECON2
_EECON2  equ     397
	global	_EEPGD
_EEPGD  equ     3175
	global	_RD
_RD  equ     3168
	global	_WR
_WR  equ     3169
	global	_WREN
_WREN  equ     3170
	global	_WRERR
_WRERR  equ     3171
psect	strings,class=CODE,delta=2,reloc=256
global __pstrings
__pstrings:
	global	stringdir,stringtab,__stringbase,stringjmp
stringtab:
;	String table - string pointers are 1 byte each
	movwf	(btemp)&07Fh
	btfss	(btemp)&07Fh,7
	goto	stringcode
	bcf	status,7
	btfsc	btemp&7Fh,0
	bsf	status,7
	movf	indf,w
	return
stringcode:
	movf	fsr,w
stringdir:
movwf btemp&07Fh
movlw high(stringdir)
movwf pclath
movf btemp&07Fh,w
stringjmp:
	addwf pc
__stringbase:
	retlw	0
psect	strings
	
STR_1:	
	retlw	73	;'I'
	retlw	78	;'N'
	retlw	84	;'T'
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	70	;'F'
	retlw	65	;'A'
	retlw	67	;'C'
	retlw	73	;'I'
	retlw	78	;'N'
	retlw	71	;'G'
	retlw	32	;' '
	retlw	76	;'L'
	retlw	67	;'C'
	retlw	68	;'D'
	retlw	0
psect	strings
	
STR_2:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	80	;'P'
	retlw	73	;'I'
	retlw	67	;'C'
	retlw	32	;' '
	retlw	49	;'1'
	retlw	54	;'6'
	retlw	102	;'f'
	retlw	56	;'8'
	retlw	55	;'7'
	retlw	55	;'7'
	retlw	97	;'a'
	retlw	0
psect	strings
	file	"PIC16f877a_LCD.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initationation code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?__delay
?__delay: ;@ 0x0
	global	??__delay
??__delay: ;@ 0x0
	global	__delay$0
__delay$0:	; 4 bytes @ 0x0
	ds	1
	global	??_lcd_line1
??_lcd_line1: ;@ 0x1
	global	??_lcd_line2
??_lcd_line2: ;@ 0x1
	global	??_lcd_string
??_lcd_string: ;@ 0x1
	ds	3
	global	??_lcd_write
??_lcd_write: ;@ 0x4
	ds	1
	global	??_main
??_main: ;@ 0x5
	global	?_lcd_write
?_lcd_write: ;@ 0x5
	global	??_lcd_clear
??_lcd_clear: ;@ 0x5
	global	lcd_line2@pos
lcd_line2@pos:	; 1 bytes @ 0x5
	global	lcd_string@s
lcd_string@s:	; 1 bytes @ 0x5
	global	lcd_line1@pos
lcd_line1@pos:	; 1 bytes @ 0x5
	ds	1
	global	?_lcd_line1
?_lcd_line1: ;@ 0x6
	global	?_lcd_string
?_lcd_string: ;@ 0x6
	global	?_lcd_line2
?_lcd_line2: ;@ 0x6
	ds	1
	global	??_lcd_init
??_lcd_init: ;@ 0x7
	global	?_lcd_clear
?_lcd_clear: ;@ 0x7
	ds	2
	global	?_main
?_main: ;@ 0x9
	global	?_lcd_init
?_lcd_init: ;@ 0x9
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	lcd_write@c
lcd_write@c:	; 1 bytes @ 0x0
	ds	1
;Data sizes: Strings 30, constant 0, data 0, bss 0, persistent 0 stack 0
;Auto spaces:   Size  Autos    Used
; COMMON          14      9       9
; BANK0           80      2       2
; BANK1           80      0       0
; BANK3           96      0       0
; BANK2           96      0       0


;Pointer list with targets:

;lcd_string@s	PTR const unsigned char  size(1); Largest target is 16
;		 -> STR_1(CODE[16]), STR_2(CODE[14]), 


;Main: autosize = 0, tempsize = 0, incstack = 0, save=0


;Call graph:                      Base Space Used Autos Args Refs Density
;_main                                                0    0  242   0.00
;           _lcd_init
;          _lcd_line1
;         _lcd_string
;          _lcd_line2
;  _lcd_string                                        1    0   65   0.00
;                                    5 COMMO    1
;          _lcd_write
;  _lcd_line1                                         1    0   48   0.00
;                                    5 COMMO    1
;          _lcd_write
;  _lcd_init                                          3    0   81   0.00
;                                    7 COMMO    2
;                                    1 BANK0    1
;             __delay
;          _lcd_write
;          _lcd_clear
;  _lcd_line2                                         1    0   48   0.00
;                                    5 COMMO    1
;          _lcd_write
;    _lcd_clear                                       2    0   32   0.00
;                                    5 COMMO    2
;          _lcd_write
;             __delay
;      _lcd_write                                     2    0   32   0.00
;                                    4 COMMO    1
;                                    0 BANK0    1
;             __delay
;        __delay                                      0    4    0   0.00
;                                    0 COMMO    4
; Estimated maximum call depth 4
; Address spaces:

;Name               Size   Autos  Total    Cost      Usage
;BITCOMMON            E      0       0       0        0.0%
;CODE                 0      0       0       0        0.0%
;NULL                 0      0       0       0        0.0%
;COMMON               E      9       9       1       64.3%
;SFR0                 0      0       0       1        0.0%
;BITSFR0              0      0       0       1        0.0%
;BITSFR1              0      0       0       2        0.0%
;SFR1                 0      0       0       2        0.0%
;ABS                  0      0       5       2        0.0%
;STACK                0      0       0       3        0.0%
;BITBANK0            50      0       0       4        0.0%
;SFR3                 0      0       0       4        0.0%
;BITSFR3              0      0       0       4        0.0%
;BANK0               50      2       2       5        2.5%
;BITSFR2              0      0       0       5        0.0%
;SFR2                 0      0       0       5        0.0%
;BITBANK1            50      0       0       6        0.0%
;BANK1               50      0       0       7        0.0%
;BITBANK3            60      0       0       8        0.0%
;BANK3               60      0       0       9        0.0%
;BITBANK2            60      0       0      10        0.0%
;BANK2               60      0       0      11        0.0%
;DATA                 0      0       5      12        0.0%
;EEDATA             100      0       0    1000        0.0%

	global	_main
psect	maintext,local,class=CODE,delta=2
global __pmaintext
__pmaintext:

; *************** function _main *****************
; Defined at:
;		line 11 in file "C:\Documents and Settings\User\Desktop\PIC 16f877 lcd\Code\PIC16f877_LCD.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 17F/0
;		On exit  : 60/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       0       0       0       0
;      Temp:     0
;      Total:    0
; This function calls:
;		_lcd_init
;		_lcd_line1
;		_lcd_string
;		_lcd_line2
; This function is called by:
;		Startup code after reset
; This function uses a non-reentrant model
; 
psect	maintext
	file	"C:\Documents and Settings\User\Desktop\PIC 16f877 lcd\Code\PIC16f877_LCD.c"
	line	11
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
;PIC16f877_LCD.c: 10: void main()
;PIC16f877_LCD.c: 11: {
	
_main:	
	opt stack 7
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	12
	
l30000728:	
;PIC16f877_LCD.c: 12: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(136)^080h	;volatile
	line	13
;PIC16f877_LCD.c: 13: PORTD=0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(8)	;volatile
	
l30000729:	
	line	16
;PIC16f877_LCD.c: 16: lcd_init();
	fcall	_lcd_init
	
l30000730:	
	line	17
;PIC16f877_LCD.c: 17: lcd_line1(0);
	movlw	(0)
	fcall	_lcd_line1
	
l30000731:	
	line	18
;PIC16f877_LCD.c: 18: lcd_string("INTERFACING LCD");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_lcd_string
	
l30000732:	
	line	19
;PIC16f877_LCD.c: 19: lcd_line2(0);
	movlw	(0)
	fcall	_lcd_line2
	
l30000733:	
	line	20
;PIC16f877_LCD.c: 20: lcd_string("  PIC 16f877a");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_lcd_string
	
l14:	
	goto	l14
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
; =============== function _main ends ============

psect	maintext
	line	22
	signat	_main,88
	global	_lcd_string
psect	text50,local,class=CODE,delta=2
global __ptext50
__ptext50:

; *************** function _lcd_string *****************
; Defined at:
;		line 63 in file "C:\Documents and Settings\User\Desktop\PIC 16f877 lcd\Code\lcd.c"
; Parameters:    Size  Location     Type
;  s               1    wreg     PTR const unsigned char 
;		 -> STR_1(16), STR_2(14), 
; Auto vars:     Size  Location     Type
;  s               1    5[COMMON] PTR const unsigned char 
;		 -> STR_1(16), STR_2(14), 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 60/0
;		On exit  : 60/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         1       0       0       0       0
;      Temp:     0
;      Total:    1
; This function calls:
;		_lcd_write
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text50
	file	"C:\Documents and Settings\User\Desktop\PIC 16f877 lcd\Code\lcd.c"
	line	63
	global	__size_of_lcd_string
	__size_of_lcd_string	equ	__end_of_lcd_string-_lcd_string
;lcd.c: 61: void
;lcd.c: 62: lcd_string(const char * s)
;lcd.c: 63: {
	
_lcd_string:	
	opt stack 6
; Regs used in _lcd_string: [wreg+status,2+status,0+pclath+cstack]
;lcd_string@s stored from wreg
	movwf	(lcd_string@s)
	
l30000734:	
	line	64
;lcd.c: 64: RA3 = 1;
	bsf	(43/8),(43)&7
	goto	l30000737
	
l30000735:	
	line	66
;lcd.c: 66: lcd_write(*s++);
	movf	(lcd_string@s),w
	FNCALL _lcd_string,stringtab
	fcall	stringdir
	fcall	_lcd_write
	
l30000736:	
	incf	(lcd_string@s),f
	
l30000737:	
	line	65
	movf	(lcd_string@s),w
	FNCALL _lcd_string,stringtab
	fcall	stringdir
	iorlw	0
	skipz
	goto	u21
	goto	u20
u21:
	goto	l30000735
u20:
	
l3:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_string
	__end_of_lcd_string:
; =============== function _lcd_string ends ============

psect	text51,local,class=CODE,delta=2
global __ptext51
__ptext51:
	line	67
	signat	_lcd_string,4216
	global	_lcd_line1

; *************** function _lcd_line1 *****************
; Defined at:
;		line 85 in file "C:\Documents and Settings\User\Desktop\PIC 16f877 lcd\Code\lcd.c"
; Parameters:    Size  Location     Type
;  pos             1    wreg     unsigned char 
; Auto vars:     Size  Location     Type
;  pos             1    5[COMMON] unsigned char 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 60/0
;		On exit  : 60/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         1       0       0       0       0
;      Temp:     0
;      Total:    1
; This function calls:
;		_lcd_write
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text51
	file	"C:\Documents and Settings\User\Desktop\PIC 16f877 lcd\Code\lcd.c"
	line	85
	global	__size_of_lcd_line1
	__size_of_lcd_line1	equ	__end_of_lcd_line1-_lcd_line1
;lcd.c: 83: void
;lcd.c: 84: lcd_line1(unsigned char pos)
;lcd.c: 85: {
	
_lcd_line1:	
	opt stack 6
; Regs used in _lcd_line1: [wreg+status,2+status,0+pclath+cstack]
;lcd_line1@pos stored from wreg
	movwf	(lcd_line1@pos)
	
l30000738:	
	line	86
;lcd.c: 86: RA3 = 0;
	bcf	(43/8),(43)&7
	
l30000739:	
	line	87
;lcd.c: 87: lcd_write(0x80+pos);
	movf	(lcd_line1@pos),w
	addlw	080h
	fcall	_lcd_write
	
l8:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_line1
	__end_of_lcd_line1:
; =============== function _lcd_line1 ends ============

psect	text52,local,class=CODE,delta=2
global __ptext52
__ptext52:
	line	88
	signat	_lcd_line1,4216
	global	_lcd_init

; *************** function _lcd_init *****************
; Defined at:
;		line 124 in file "C:\Documents and Settings\User\Desktop\PIC 16f877 lcd\Code\lcd.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;  init_value      1    0        unsigned char 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 17F/0
;		On exit  : 60/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         2       1       0       0       0
;      Temp:     2
;      Total:    3
; This function calls:
;		__delay
;		_lcd_write
;		_lcd_clear
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text52
	file	"C:\Documents and Settings\User\Desktop\PIC 16f877 lcd\Code\lcd.c"
	line	124
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
;lcd.c: 122: void
;lcd.c: 123: lcd_init()
;lcd.c: 124: {
	
_lcd_init:	
	opt stack 6
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	127
	
l30000710:	
;lcd.c: 125: char init_value;
;lcd.c: 127: ADCON1 = 0x06;
	movlw	(06h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(159)^080h	;volatile
	
l30000711:	
	line	130
;lcd.c: 130: TRISA=0;
	clrf	(133)^080h	;volatile
	
l30000712:	
	line	131
;lcd.c: 131: TRISD=0;
	clrf	(136)^080h	;volatile
	
l30000713:	
	line	132
;lcd.c: 132: RA3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(43/8),(43)&7
	
l30000714:	
	line	133
;lcd.c: 133: RA1 = 0;
	bcf	(41/8),(41)&7
	
l30000715:	
	line	134
;lcd.c: 134: RA2 = 0;
	bcf	(42/8),(42)&7
	line	136
;lcd.c: 136: _delay((unsigned long)((15)*(4000000/4000.0)));
	movlw	20
movwf	(??_lcd_init+0+0+1),f
	movlw	121
movwf	(??_lcd_init+0+0),f
u37:
	decfsz	(??_lcd_init+0+0),f
	goto	u37
	decfsz	(??_lcd_init+0+0+1),f
	goto	u37
	nop2

	line	137
;lcd.c: 137: PORTD = init_value;
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	
l30000716:	
	line	138
;lcd.c: 138: ((RA1 = 1),(RA1=0));
	bsf	(41/8),(41)&7
	
l30000717:	
	bcf	(41/8),(41)&7
	line	139
;lcd.c: 139: _delay((unsigned long)((5)*(4000000/4000.0)));
	movlw	7
movwf	(??_lcd_init+0+0+1),f
	movlw	125
movwf	(??_lcd_init+0+0),f
u47:
	decfsz	(??_lcd_init+0+0),f
	goto	u47
	decfsz	(??_lcd_init+0+0+1),f
	goto	u47

	
l30000718:	
	line	140
;lcd.c: 140: ((RA1 = 1),(RA1=0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(41/8),(41)&7
	
l30000719:	
	bcf	(41/8),(41)&7
	line	141
;lcd.c: 141: _delay((unsigned long)((200)*(4000000/4000000.0)));
	movlw	66
movwf	(??_lcd_init+0+0),f
u57:
decfsz	(??_lcd_init+0+0),f
	goto	u57
	clrwdt

	
l30000720:	
	line	142
;lcd.c: 142: ((RA1 = 1),(RA1=0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(41/8),(41)&7
	
l30000721:	
	bcf	(41/8),(41)&7
	line	143
;lcd.c: 143: _delay((unsigned long)((200)*(4000000/4000000.0)));
	movlw	66
movwf	(??_lcd_init+0+0),f
u67:
decfsz	(??_lcd_init+0+0),f
	goto	u67
	clrwdt

	line	144
;lcd.c: 144: PORTD = 2;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	
l30000722:	
	line	145
;lcd.c: 145: ((RA1 = 1),(RA1=0));
	bsf	(41/8),(41)&7
	
l30000723:	
	bcf	(41/8),(41)&7
	
l30000724:	
	line	147
;lcd.c: 147: lcd_write(0x28);
	movlw	(028h)
	fcall	_lcd_write
	
l30000725:	
	line	148
;lcd.c: 148: lcd_write(0xF);
	movlw	(0Fh)
	fcall	_lcd_write
	
l30000726:	
	line	149
;lcd.c: 149: lcd_clear();
	fcall	_lcd_clear
	
l30000727:	
	line	150
;lcd.c: 150: lcd_write(0x6);
	movlw	(06h)
	fcall	_lcd_write
	
l12:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
; =============== function _lcd_init ends ============

psect	text53,local,class=CODE,delta=2
global __ptext53
__ptext53:
	line	151
	signat	_lcd_init,88
	global	_lcd_line2

; *************** function _lcd_line2 *****************
; Defined at:
;		line 96 in file "C:\Documents and Settings\User\Desktop\PIC 16f877 lcd\Code\lcd.c"
; Parameters:    Size  Location     Type
;  pos             1    wreg     unsigned char 
; Auto vars:     Size  Location     Type
;  pos             1    5[COMMON] unsigned char 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 60/0
;		On exit  : 60/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         1       0       0       0       0
;      Temp:     0
;      Total:    1
; This function calls:
;		_lcd_write
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text53
	file	"C:\Documents and Settings\User\Desktop\PIC 16f877 lcd\Code\lcd.c"
	line	96
	global	__size_of_lcd_line2
	__size_of_lcd_line2	equ	__end_of_lcd_line2-_lcd_line2
;lcd.c: 94: void
;lcd.c: 95: lcd_line2(unsigned char pos)
;lcd.c: 96: {
	
_lcd_line2:	
	opt stack 6
; Regs used in _lcd_line2: [wreg+status,2+status,0+pclath+cstack]
;lcd_line2@pos stored from wreg
	movwf	(lcd_line2@pos)
	
l30000740:	
	line	97
;lcd.c: 97: RA3 = 0;
	bcf	(43/8),(43)&7
	
l30000741:	
	line	98
;lcd.c: 98: lcd_write(0xC0+pos);
	movf	(lcd_line2@pos),w
	addlw	0C0h
	fcall	_lcd_write
	
l9:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_line2
	__end_of_lcd_line2:
; =============== function _lcd_line2 ends ============

psect	text54,local,class=CODE,delta=2
global __ptext54
__ptext54:
	line	99
	signat	_lcd_line2,4216
	global	_lcd_clear

; *************** function _lcd_clear *****************
; Defined at:
;		line 53 in file "C:\Documents and Settings\User\Desktop\PIC 16f877 lcd\Code\lcd.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 60/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         2       0       0       0       0
;      Temp:     2
;      Total:    2
; This function calls:
;		_lcd_write
;		__delay
; This function is called by:
;		_lcd_init
; This function uses a non-reentrant model
; 
psect	text54
	file	"C:\Documents and Settings\User\Desktop\PIC 16f877 lcd\Code\lcd.c"
	line	53
	global	__size_of_lcd_clear
	__size_of_lcd_clear	equ	__end_of_lcd_clear-_lcd_clear
;lcd.c: 51: void
;lcd.c: 52: lcd_clear(void)
;lcd.c: 53: {
	
_lcd_clear:	
	opt stack 5
; Regs used in _lcd_clear: [wreg+status,2+status,0+pclath+cstack]
	line	54
	
l30000707:	
;lcd.c: 54: RA3 = 0;
	bcf	(43/8),(43)&7
	
l30000708:	
	line	55
;lcd.c: 55: lcd_write(0x1);
	movlw	(01h)
	fcall	_lcd_write
	
l30000709:	
	line	56
;lcd.c: 56: _delay((unsigned long)((2)*(4000000/4000.0)));
	movlw	3
movwf	(??_lcd_clear+0+0+1),f
	movlw	151
movwf	(??_lcd_clear+0+0),f
u77:
	decfsz	(??_lcd_clear+0+0),f
	goto	u77
	decfsz	(??_lcd_clear+0+0+1),f
	goto	u77
	nop2

	
l2:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_clear
	__end_of_lcd_clear:
; =============== function _lcd_clear ends ============

psect	text55,local,class=CODE,delta=2
global __ptext55
__ptext55:
	line	57
	signat	_lcd_clear,88
	global	_lcd_write

; *************** function _lcd_write *****************
; Defined at:
;		line 39 in file "C:\Documents and Settings\User\Desktop\PIC 16f877 lcd\Code\lcd.c"
; Parameters:    Size  Location     Type
;  c               1    wreg     unsigned char 
; Auto vars:     Size  Location     Type
;  c               1    0[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 60/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         1       1       0       0       0
;      Temp:     1
;      Total:    2
; This function calls:
;		__delay
; This function is called by:
;		_lcd_clear
;		_lcd_string
;		_lcd_line1
;		_lcd_line2
;		_lcd_init
; This function uses a non-reentrant model
; 
psect	text55
	file	"C:\Documents and Settings\User\Desktop\PIC 16f877 lcd\Code\lcd.c"
	line	39
	global	__size_of_lcd_write
	__size_of_lcd_write	equ	__end_of_lcd_write-_lcd_write
;lcd.c: 37: void
;lcd.c: 38: lcd_write(unsigned char c)
;lcd.c: 39: {
	
_lcd_write:	
	opt stack 4
; Regs used in _lcd_write: [wreg+status,2+status,0]
;lcd_write@c stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(lcd_write@c)
	
l30000700:	
	line	40
;lcd.c: 40: _delay((unsigned long)((40)*(4000000/4000000.0)));
	movlw	13
movwf	(??_lcd_write+0+0),f
u87:
decfsz	(??_lcd_write+0+0),f
	goto	u87

	
l30000701:	
	line	41
;lcd.c: 41: PORTD = ( ( c >> 4 ) & 0x0F );
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	swapf	(lcd_write@c),w
	andlw	(0ffh shr 4) & 0ffh
	andlw	0Fh
	movwf	(8)	;volatile
	
l30000702:	
	line	42
;lcd.c: 42: ((RA1 = 1),(RA1=0));
	bsf	(41/8),(41)&7
	
l30000703:	
	bcf	(41/8),(41)&7
	
l30000704:	
	line	43
;lcd.c: 43: PORTD = ( c & 0x0F );
	movf	(lcd_write@c),w
	andlw	0Fh
	movwf	(8)	;volatile
	
l30000705:	
	line	44
;lcd.c: 44: ((RA1 = 1),(RA1=0));
	bsf	(41/8),(41)&7
	
l30000706:	
	bcf	(41/8),(41)&7
	
l1:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_write
	__end_of_lcd_write:
; =============== function _lcd_write ends ============

psect	text56,local,class=CODE,delta=2
global __ptext56
__ptext56:
	line	45
	signat	_lcd_write,4216
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	end
