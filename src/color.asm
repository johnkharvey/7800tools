;################################################################
; A 7800 Color-detection prototype from 2001
; by John K. Harvey
;################################################################

	processor	6502

	include	hdr/maria.h

	;============
	ORG	$8000
	;============

L8000:	.byte	$00,$7E,$7E,$00,$00,$7C,$7C,$00,$FF,$00,$FF,$78,$18,$E0,$C0,$99
	.byte	$00,$00,$18,$00,$00,$78,$00,$FF,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$60,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$60,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF
	.byte	$00,$00,$00,$00,$00,$00,$00,$F8,$00,$00,$78,$00,$00,$00,$00,$00
	.byte	$F0,$1E,$00,$00,$00,$00,$00,$00,$00,$F8,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$81,$FF,$10,$10,$38,$38,$00,$FF,$3C,$C3,$CC,$7E,$F0,$E6,$5A
	.byte	$80,$02,$3C,$66,$1B,$CC,$7E,$18,$18,$18,$00,$00,$00,$00,$00,$00
	.byte	$00,$30,$00,$6C,$30,$C6,$76,$00,$18,$60,$00,$00,$30,$00,$30,$80
	.byte	$7C,$FC,$FC,$78,$1E,$78,$78,$30,$78,$70,$30,$30,$18,$00,$60,$30
	.byte	$78,$CC,$FC,$3C,$F8,$FE,$F0,$3E,$CC,$78,$78,$E6,$FE,$C6,$C6,$38
	.byte	$F0,$1C,$E6,$78,$78,$FC,$30,$C6,$C6,$78,$FE,$78,$02,$78,$00,$00
	.byte	$00,$76,$DC,$78,$76,$78,$F0,$0C,$E6,$78,$CC,$E6,$78,$C6,$CC,$78
	.byte	$60,$0C,$F0,$F8,$18,$76,$30,$6C,$C6,$0C,$FC,$1C,$18,$E0,$00,$FE
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$99,$E7,$38,$38,$7C,$7C,$18,$E7,$66,$99,$CC,$18,$70,$67,$3C
	.byte	$E0,$0E,$7E,$00,$1B,$38,$7E,$3C,$18,$3C,$18,$30,$FE,$24,$FF,$18
	.byte	$00,$00,$00,$6C,$F8,$66,$CC,$00,$30,$30,$66,$30,$30,$00,$30,$C0
	.byte	$E6,$30,$CC,$CC,$0C,$CC,$CC,$30,$CC,$18,$30,$30,$30,$FC,$30,$00
	.byte	$C0,$CC,$66,$66,$6C,$62,$60,$66,$CC,$30,$CC,$66,$66,$C6,$C6,$6C
	.byte	$60,$78,$66,$CC,$30,$CC,$78,$EE,$6C,$30,$66,$60,$06,$18,$00,$00
	.byte	$00,$CC,$66,$CC,$CC,$C0,$60,$7C,$66,$30,$CC,$6C,$30,$D6,$CC,$CC
	.byte	$7C,$7C,$60,$0C,$34,$CC,$78,$FE,$6C,$7C,$64,$30,$18,$30,$00,$C6
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$BD,$C3,$7C,$7C,$FE,$FE,$3C,$C3,$42,$BD,$CC,$3C,$30,$63,$E7
	.byte	$F8,$3E,$18,$66,$1B,$6C,$7E,$7E,$18,$7E,$0C,$60,$C0,$66,$FF,$3C
	.byte	$00,$30,$00,$FE,$0C,$30,$DC,$00,$60,$18,$3C,$30,$00,$00,$00,$60
	.byte	$F6,$30,$60,$0C,$FE,$0C,$CC,$30,$CC,$0C,$00,$00,$60,$00,$18,$30
	.byte	$DE,$FC,$66,$C0,$66,$68,$68,$CE,$CC,$30,$CC,$6C,$62,$D6,$CE,$C6
	.byte	$60,$DC,$6C,$1C,$30,$CC,$CC,$FE,$38,$30,$32,$60,$0C,$18,$00,$00
	.byte	$00,$7C,$66,$C0,$CC,$FC,$60,$CC,$66,$30,$0C,$78,$30,$FE,$CC,$CC
	.byte	$66,$CC,$66,$78,$30,$CC,$CC,$FE,$38,$CC,$30,$30,$18,$30,$00,$C6
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$FF,$81,$FF,$FE,$FE,$FE,$7C,$3C,$C3,$42,$BD,$7D,$66,$30,$63,$E7
	.byte	$FE,$FE,$18,$66,$7B,$6C,$00,$18,$18,$18,$FE,$FE,$C0,$FF,$7E,$7E
	.byte	$00,$30,$00,$6C,$78,$18,$76,$00,$60,$18,$FF,$FC,$00,$FC,$00,$30
	.byte	$DE,$30,$38,$38,$CC,$0C,$F8,$18,$78,$7C,$00,$00,$C0,$00,$0C,$18
	.byte	$DE,$CC,$7C,$C0,$66,$78,$78,$C0,$FC,$30,$0C,$78,$60,$FE,$DE,$C6
	.byte	$7C,$CC,$7C,$70,$30,$CC,$CC,$D6,$38,$78,$18,$60,$18,$18,$C6,$00
	.byte	$00,$0C,$7C,$CC,$7C,$CC,$F0,$CC,$76,$30,$0C,$6C,$30,$FE,$CC,$CC
	.byte	$66,$CC,$76,$C0,$30,$CC,$CC,$D6,$5C,$CC,$98,$E0,$00,$1C,$00,$6C
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$FF,$A5,$DB,$FE,$7C,$38,$38,$18,$E7,$66,$99,$0F,$66,$3F,$7F,$3C
	.byte	$F8,$3E,$7E,$66,$DB,$38,$00,$7E,$7E,$18,$0C,$60,$C0,$66,$3C,$FF
	.byte	$00,$78,$6C,$FE,$C0,$CC,$38,$C0,$60,$18,$3C,$30,$00,$00,$00,$18
	.byte	$CE,$30,$0C,$0C,$6C,$F8,$C0,$0C,$CC,$CC,$30,$30,$60,$FC,$18,$0C
	.byte	$DE,$CC,$66,$C0,$66,$68,$68,$C0,$CC,$30,$0C,$6C,$60,$FE,$F6,$C6
	.byte	$66,$CC,$66,$E0,$30,$CC,$CC,$C6,$6C,$CC,$8C,$60,$30,$18,$6C,$00
	.byte	$18,$78,$60,$78,$0C,$78,$60,$76,$6C,$70,$0C,$66,$30,$CC,$F8,$78
	.byte	$DC,$76,$DC,$7C,$7C,$CC,$CC,$C6,$C6,$CC,$FC,$30,$18,$30,$00,$38
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$81,$FF,$FE,$38,$7C,$10,$00,$FF,$3C,$C3,$07,$66,$33,$63,$5A
	.byte	$E0,$0E,$3C,$66,$DB,$63,$00,$3C,$3C,$18,$18,$30,$00,$24,$18,$FF
	.byte	$00,$78,$6C,$6C,$7C,$C6,$6C,$60,$30,$30,$66,$30,$00,$00,$00,$0C
	.byte	$C6,$70,$CC,$CC,$3C,$C0,$60,$CC,$CC,$CC,$30,$30,$30,$00,$30,$CC
	.byte	$C6,$78,$66,$66,$6C,$62,$62,$66,$CC,$30,$0C,$66,$60,$EE,$E6,$6C
	.byte	$66,$CC,$66,$CC,$B4,$CC,$CC,$C6,$C6,$CC,$C6,$60,$60,$18,$38,$00
	.byte	$30,$00,$60,$00,$0C,$00,$6C,$00,$60,$00,$00,$60,$30,$00,$00,$00
	.byte	$00,$00,$00,$00,$30,$00,$00,$00,$00,$00,$00,$30,$18,$30,$DC,$10
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$7E,$7E,$6C,$10,$38,$10,$00,$FF,$00,$FF,$0F,$3C,$3F,$7F,$99
	.byte	$80,$02,$18,$66,$7F,$3E,$00,$18,$18,$18,$00,$00,$00,$00,$00,$00
	.byte	$00,$30,$6C,$6C,$30,$00,$38,$60,$18,$60,$00,$00,$00,$00,$00,$06
	.byte	$7C,$30,$78,$78,$1C,$FC,$38,$FC,$78,$78,$00,$00,$18,$00,$60,$78
	.byte	$7C,$30,$FC,$3C,$F8,$FE,$FE,$3C,$CC,$78,$1E,$E6,$F0,$C6,$C6,$38
	.byte	$FC,$78,$FC,$78,$FC,$CC,$CC,$C6,$C6,$CC,$FE,$78,$C0,$78,$10,$00
	.byte	$30,$00,$E0,$00,$1C,$00,$38,$00,$E0,$30,$0C,$E0,$70,$00,$00,$00
	.byte	$00,$00,$00,$00,$10,$00,$00,$00,$00,$00,$00,$1C,$18,$E0,$76,$00

	;============
	ORG     $9000
	;============


L9000: BIT    MSTAT   ;3
	BMI    L9000   ;2
L9004: BIT    MSTAT   ;3
	BPL    L9004   ;2
	RTS	     ;6

	;============
	ORG     $D000
	;============

LD000:	SEI		;2
	CLD		;2
	LDA	#$07	;2
	STA	INPTCTRL	;3
	LDA	#$7F	;2
	STA	CTRL	;3
	LDX	#$FF	;2
	TXS	     ;2
	STX    $2200   ;4
	LDA    #$87    ;2
	STA    P0C2    ;3
	LDA    #$26    ;2
	STA    P0C1    ;3
	LDA    #$36    ;2
	STA    P0C3    ;3
	LDA    #$0F    ;2
	STA    BACKGRND;3
	STA    $2201   ;4
	LDA    #$00    ;2
	STA    INPTCTRL;3
	STA    OFFSET  ;3
	LDA    #$80    ;2
	STA    CHBASE  ;3
	LDX    #$00    ;2
LD02F: LDA    LE000,X ;4
	STA    $1800,X ;5
	INX	     ;2
	BNE    LD02F   ;2
LD038: LDA    LE200,X ;4
	STA    $1A00,X ;5
	INX	     ;2
	BNE    LD038   ;2
	JSR    L9000   ;6
LD044: BIT    MSTAT   ;3
	BMI    LD044   ;2
	LDA    #$00    ;2
	STA    DPPL    ;3
	LDA    #$1A    ;2
	STA    DPPH    ;3
	JSR    L9000   ;6
	LDA    #$4B    ;2
	STA    CTRL    ;3
LD057: JSR    L9000   ;6
	LDA    SWCHB   ;4
	AND    #$03    ;2
	EOR    #$03    ;2
	BEQ    LD073   ;2
	LDA    #$00    ;2
	STA    $2201   ;4
	STA    BACKGRND;3
	STA    $2202   ;4
	STA    $2203   ;4
	JMP    LD057   ;3
LD073: LDA    SWCHA   ;4
	BMI    LD08B   ;2
	LDA    $2200   ;4
	BPL    LD08B   ;2
LD07D: CLC	     ;2
	LDA    $2201   ;4
	ADC    #$10    ;2
	STA    $2201   ;4
	STA    BACKGRND;3
	JMP    LD0D4   ;3
LD08B: ROL	     ;2
	BMI    LD0A2   ;2
	LDA    $2200   ;4
	ROL	     ;2
	BPL    LD0A2   ;2
LD094: SEC	     ;2
	LDA    $2201   ;4
	SBC    #$10    ;2
	STA    $2201   ;4
	STA    BACKGRND;3
	JMP    LD0D4   ;3
LD0A2: ROL	     ;2
	BMI    LD0BD   ;2
	LDA    $2200   ;4
	ROL	     ;2
	ROL	     ;2
	BPL    LD0BD   ;2
	DEC    $2201   ;6
	LDA    $2201   ;4
	STA    BACKGRND;3
	AND    #$0F    ;2
	CMP    #$0F    ;2
	BEQ    LD07D   ;2
	JMP    LD0D4   ;3
LD0BD: ROL	     ;2
	BMI    LD0D4   ;2
	LDA    $2200   ;4
	ROL	     ;2
	ROL	     ;2
	ROL	     ;2
	BPL    LD0D4   ;2
	INC    $2201   ;6
	LDA    $2201   ;4
	STA    BACKGRND;3
	AND    #$0F    ;2
	BEQ    LD094   ;2
LD0D4: LDA    SWCHA   ;4
	AND    #$F0    ;2
	STA    $2200   ;4
	LDA    $2201   ;4
	AND    #$0F    ;2
	CMP    #$0A    ;2
	BMI    LD0E8   ;2
	CLC	     ;2
	ADC    #$07    ;2
LD0E8: ADC    #$30    ;2
	STA    $2203   ;4
	LDA    $2201   ;4
	CLC	     ;2
	AND    #$F0    ;2
	ROR	     ;2
	ROR	     ;2
	ROR	     ;2
	ROR	     ;2
	CMP    #$0A    ;2
	BMI    LD0FE   ;2
	CLC	     ;2
	ADC    #$07    ;2
LD0FE: ADC    #$30    ;2
	STA    $2202   ;4
	JMP    LD057   ;3

        ;============
        ORG     $D4A5
        ;============
	; I have no idea why this byte is a $40 in a sea of $FF's
	.byte	$40

        ;============
        ORG     $E000
        ;============

LE000: .byte	$20,$50,$72,$6F,$67,$72,$61,$6D,$6D,$65,$64,$20,$62,$79,$4A,$6F
	.byte	$68,$6E,$20,$4B,$2E,$20,$48,$61,$72,$76,$65,$79,$53,$70,$65,$63
	.byte	$69,$61,$6C,$20,$54,$68,$61,$6E,$6B,$73,$20,$74,$6F,$45,$63,$6B
	.byte	$68,$61,$72,$64,$20,$53,$74,$6F,$6C,$62,$65,$72,$67,$43,$4F,$4C
	.byte	$4F,$52,$20,$3D,$20,$24,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$00,$60,$18,$1F,$00,$00,$00,$00,$01,$60,$18,$13,$32,$00,$00,$00
	.byte	$0E,$60,$18,$12,$32,$00,$00,$00,$1C,$60,$18,$0F,$32,$00,$00,$00
	.byte	$2D,$60,$18,$10,$32,$00,$00,$00,$3D,$60,$18,$17,$32,$02,$60,$22
	.byte	$1F,$55,$03,$60,$22,$1F,$59,$00,$00,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
LE200: .byte	$00,$18,$80,$07,$18,$80,$07,$18,$80,$87,$18,$80,$07,$18,$80,$07
	.byte	$18,$80,$07,$18,$80,$07,$18,$80,$07,$18,$88,$07,$18,$90,$07,$18
	.byte	$80,$07,$18,$80,$07,$18,$80,$07,$18,$80,$07,$18,$80,$07,$18,$80
	.byte	$07,$18,$80,$07,$18,$80,$07,$18,$80,$07,$18,$A8,$07,$18,$80,$07
	.byte	$18,$80,$07,$18,$98,$07,$18,$A0,$07,$18,$80,$07,$18,$80,$07,$18
	.byte	$80,$07,$18,$80,$07,$18,$80,$07,$18,$80,$07,$18,$80,$01,$18,$80
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$40,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
LEB49: JMP    LD000   ;3
LEB4C: .byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$29,$01,$F0,$08,$A5,$4C,$D0,$04,$A9,$08,$85,$4C
	.byte	$A5,$84,$29,$10,$F0,$08,$A5,$4D,$D0,$04,$A9,$08,$85,$4D,$60,$A5
	.byte	$4F,$6A,$B0,$60,$A5,$4C,$F0,$28,$A5,$4A,$D0,$0E,$EE,$51,$25,$EE
	.byte	$67,$25,$C6,$4C,$D0,$1A,$A9,$0A,$D0,$0C,$CE,$51,$25,$CE,$67,$25
	.byte	$C6,$4C,$D0,$0C,$A9,$00,$85,$4A,$A5,$84,$29,$F0,$05,$4A,$85,$84
	.byte	$A5,$4D,$F0,$30,$A5,$4B,$D0,$0E,$EE,$07,$25,$EE,$21,$25,$C6,$4D
	.byte	$D0,$22,$A9,$0A,$D0,$0C,$CE,$07,$25,$CE,$21,$25,$C6,$4D,$D0,$14
	.byte	$A9,$00,$85,$4B,$A5,$84,$29,$0F,$85,$84,$A5,$4B,$0A,$0A,$0A,$0A
	.byte	$05,$84,$85,$84,$60,$A6,$B6,$20,$AB,$F4,$BD,$60,$C4,$85,$48,$BD
	.byte	$57,$C4,$85,$49,$A2,$09,$8A,$A8,$B1,$48,$48,$88,$B1,$48,$48,$BD
	.byte	$69,$C4,$85,$45,$BD,$68,$C4,$85,$44,$A0,$00,$68,$91,$44,$C8,$C8
	.byte	$68,$91,$44,$CA,$CA,$10,$DF,$A5,$E1,$29,$04,$D0,$06,$A2,$46,$A0
	.byte	$26,$D0,$10,$A5,$BF,$C9,$03,$D0,$06,$A2,$B2,$A0,$26,$D0,$04,$A2
	.byte	$82,$A0,$26,$8E,$02,$21,$8C,$03,$21,$A5,$C2,$D0,$0C,$A9,$30,$8D
	.byte	$9C,$25,$A9,$20,$8D,$9B,$25,$D0,$34,$20,$66,$D3,$A9,$92,$85,$48
	.byte	$A9,$25,$85,$49,$A0,$07,$A9,$00,$85,$57,$A5,$C2,$C9,$C8,$90,$13
	.byte	$A5,$4F,$29,$10,$D0,$0D,$A2,$00,$20,$B5,$F4,$A2,$00,$20,$B5,$F4
	.byte	$4C,$19,$F1,$A6,$CC,$20,$B5,$F4,$A6,$CB,$20,$B5,$F4,$A0,$07,$A9
	.byte	$00,$85,$57,$A9,$B6,$85,$48,$A9,$25,$85,$49,$A5,$C1,$C9,$10,$B0
	.byte	$17,$A5,$B8,$F0,$13,$A5,$4F,$29,$10,$D0,$0D,$A2,$00,$20,$B5,$F4
	.byte	$A2,$00,$20,$B5,$F4,$4C,$5D,$F1,$A5,$C0,$D0,$0B,$A5,$C1,$D0,$07
	.byte	$A9,$30,$8D,$C0,$25,$D0,$0A,$A6,$C1,$20,$B5,$F4,$A6,$C0,$20,$B5
	.byte	$F4,$A5,$8B,$20,$66,$D3,$A9,$00,$85,$57,$A9,$AA,$85,$48,$A9,$25
	.byte	$85,$49,$A0,$09,$A6,$CB,$20,$B5,$F4,$A5,$8F,$20,$66,$D3,$A5,$90
	.byte	$29,$03,$AA,$F0,$16,$A5,$CB,$18,$69,$50,$C9,$A0,$90,$04,$E9,$A0
	.byte	$E6,$CC,$E6,$CC,$E6,$CC,$85,$CB,$CA,$D0,$E8,$A9,$9E,$85,$48,$A9
	.byte	$25,$85,$49,$A5,$90,$C9,$04,$B0,$1D,$A9,$46,$8D,$A2,$25,$A9,$54
	.byte	$8D,$A3,$25,$A9,$00,$85,$57,$A0,$07,$A6,$CC,$20,$B5,$F4,$A6,$CB
	.byte	$20,$B5,$F4,$4C,$EB,$F1,$A9,$4B,$8D,$A2,$25,$A9,$27,$8D,$A3,$25
	.byte	$A9,$2E,$8D,$A7,$25,$A5,$CC,$18,$69,$30,$8D,$A8,$25,$A5,$90,$4A
	.byte	$4A,$20,$66,$D3,$A9,$00,$85,$57,$A0,$07,$A6,$CB,$20,$B5,$F4,$A5
	.byte	$DF,$D0,$07,$A9,$30,$8D,$4F,$26,$D0,$1B,$20,$66,$D3,$A9,$00,$85
	.byte	$57,$A9,$46,$85,$48,$A9,$26,$85,$49,$A0,$06,$A6,$CC,$20,$B5,$F4
	.byte	$A6,$CB,$20,$B5,$F4,$A5,$DE,$D0,$07,$A9,$30,$8D,$AF,$26,$D0,$1B
	.byte	$20,$66,$D3,$A9,$00,$85,$57,$A9,$A6,$85,$48,$A9,$26,$85,$49,$A0
	.byte	$06,$A6,$CC,$20,$B5,$F4,$A6,$CB,$20,$B5,$F4,$A5,$71,$18,$69,$30
	.byte	$8D,$A3,$26,$A5,$E3,$29,$30,$F0,$14,$C9,$10,$F0,$0A,$C9,$20,$F0
	.byte	$09,$A2,$35,$A0,$34,$D0,$0A,$A2,$37,$2C,$A2,$39,$2C,$A2,$26,$A0
	.byte	$20,$8E,$55,$26,$8C,$56,$26,$A5,$B7,$29,$10,$F0,$16,$A5,$4F,$29
	.byte	$0F,$D0,$1C,$A5,$4F,$29,$10,$F0,$05,$20,$97,$F4,$D0,$08,$20,$92
	.byte	$F4,$D0,$03,$20,$A5,$F4,$8E,$67,$26,$8D,$68,$26,$8C,$69,$26,$A5
	.byte	$88,$29,$70,$F0,$2B,$A5,$4F,$29,$0F,$D0,$4E,$A5,$4F,$29,$10,$F0
	.byte	$05,$20,$97,$F4,$D0,$03,$20,$92,$F4,$8E,$73,$26,$8D,$74,$26,$8C
	.byte	$75,$26,$20,$92,$F4,$8E,$5B,$26,$8D,$5C,$26,$8C,$5D,$26,$D0,$29
	.byte	$A5,$4F,$29,$0F,$D0,$23,$A5,$4F,$29,$10,$F0,$05,$20,$9E,$F4,$D0
	.byte	$03,$20,$92,$F4,$8E,$5B,$26,$8D,$5C,$26,$8C,$5D,$26,$20,$A5,$F4
	.byte	$8E,$73,$26,$8D,$74,$26,$8C,$75,$26,$A5,$86,$C9,$2E,$D0,$0C,$A9
	.byte	$30,$8D,$E4,$25,$A9,$20,$8D,$E3,$25,$D0,$3D,$38,$E9,$2E,$B0,$04
	.byte	$49,$FF,$69,$01,$20,$66,$D3,$A9,$00,$85,$57,$A9,$DA,$85,$48,$A9
	.byte	$25,$85,$49,$A0,$09,$A6,$CB,$20,$B5,$F4,$A5,$86,$C9,$2F,$90,$03
	.byte	$A2,$2B,$2C,$A2,$2D,$A5,$CB,$29,$F0,$F0,$05,$8E,$E2,$25,$D0,$08
	.byte	$A9,$20,$8D,$E2,$25,$8E,$E3,$25,$A5,$C3,$20,$66,$D3,$A9,$CE,$85
	.byte	$48,$A9,$25,$85,$49,$A5,$CC,$18,$69,$30,$8D,$D5,$25,$85,$57,$A0
	.byte	$09,$A6,$CB,$20,$B5,$F4,$A5,$8C,$D0,$07,$A9,$30,$8D,$FC,$25,$D0
	.byte	$4A,$0A,$90,$2C,$20,$66,$D3,$A5,$CB,$18,$69,$56,$85,$CB,$29,$0F
	.byte	$C9,$0A,$90,$06,$A5,$CB,$69,$05,$85,$CB,$A5,$CB,$29,$F0,$C9,$A0
	.byte	$90,$08,$A5,$CB,$69,$5F,$85,$CB,$E6,$CC,$E6,$CC,$E6,$CC,$D0,$03
	.byte	$20,$66,$D3,$A9,$F2,$85,$48,$A9,$25,$85,$49,$A9,$00,$85,$57,$A0
	.byte	$07,$A6,$CC,$20,$B5,$F4,$A6,$CB,$20,$B5,$F4,$A9,$0A,$85,$48,$A9
	.byte	$26,$85,$49,$A9,$00,$85,$57,$A0,$06,$A5,$8E,$29,$3F,$AA,$D0,$20
	.byte	$A5,$4F,$29,$10,$D0,$0F,$A2,$00,$20,$B5,$F4,$A2,$00,$86,$57,$20
	.byte	$B5,$F4,$4C,$E4,$F3,$A5,$8D,$D0,$07,$A9,$30,$8D,$13,$26,$D0,$08
	.byte	$20,$B5,$F4,$A6,$8D,$20,$B5,$F4,$A5,$E2,$29,$0F,$C9,$03,$B0,$0C
	.byte	$AA,$A5,$4F,$29,$10,$D0,$04,$A9,$F0,$D0,$0A,$8A,$C9,$0A,$90,$05
	.byte	$E9,$0A,$A2,$31,$2C,$A2,$20,$8E,$1E,$26,$18,$69,$30,$8D,$1F,$26
	.byte	$A5,$E2,$4A,$4A,$4A,$4A,$C9,$03,$B0,$0C,$AA,$A5,$4F,$29,$10,$D0
	.byte	$04,$A9,$F0,$D0,$0A,$8A,$C9,$0A,$90,$05,$E9,$0A,$A2,$31,$2C,$A2
	.byte	$20,$8E,$2A,$26,$18,$69,$30,$8D,$2B,$26,$A5,$E3,$29,$0F,$C9,$03
	.byte	$B0,$0C,$AA,$A5,$4F,$29,$10,$D0,$04,$A9,$F0,$D0,$0A,$8A,$C9,$0A
	.byte	$90,$05,$E9,$0A,$A2,$31,$2C,$A2,$20,$8E,$36,$26,$18,$69,$30,$8D
	.byte	$37,$26,$A5,$72,$C9,$09,$F0,$03,$A9,$24,$2C,$A9,$23,$8D,$85,$26
	.byte	$A0,$07,$A9,$00,$85,$57,$A9,$82,$85,$48,$A9,$26,$85,$49,$A6,$74
	.byte	$20,$B5,$F4,$A6,$73,$20,$B5,$F4,$A5,$73,$D0,$09,$A5,$74,$D0,$05
	.byte	$A9,$30,$8D,$8C,$26,$60,$A9,$20,$AA,$A8,$60,$A2,$20,$A9,$4F,$A0
	.byte	$4E,$60,$A2,$52,$A9,$44,$A0,$59,$60,$A2,$4F,$A9,$46,$A8,$60,$A5
	.byte	$BF,$C9,$02,$F0,$01,$60,$A2,$03,$60,$8A,$4A,$4A,$4A,$4A,$18,$69
	.byte	$30,$20,$D0,$F4,$91,$48,$C8,$8A,$29,$0F,$18,$69,$30,$20,$D0,$F4
	.byte	$91,$48,$C8,$60,$C9,$31,$90,$03,$66,$57,$60,$A5,$57,$F0,$03,$A9
	.byte	$30,$60,$A9,$20,$60,$A5,$88,$29,$0F,$F0,$1B,$C9,$01,$F0,$0B,$C9
	.byte	$02,$F0,$0D,$C9,$04,$90,$40,$4C,$47,$F5,$A9,$AA,$A0,$88,$D0,$0A
	.byte	$A9,$AA,$A0,$90,$D0,$04,$A9,$AA,$A0,$80,$48,$98,$48,$20,$C4,$F5
	.byte	$68,$A8,$68,$A2,$26,$8C,$0B,$25,$8C,$25,$25,$8C,$3B,$25,$8C,$55
	.byte	$25,$8D,$53,$25,$18,$69,$09,$8D,$39,$25,$69,$09,$8D,$23,$25,$69
	.byte	$09,$8D,$09,$25,$86,$32,$60,$A2,$00,$86,$32,$E6,$61,$D0,$F7,$E6
	.byte	$63,$A5,$63,$C9,$03,$D0,$EF,$4C,$49,$EB,$60,$A2,$D4,$A0,$90,$A9
	.byte	$00,$20,$11,$F5,$A6,$87,$BD,$8E,$C2,$85,$54,$A5,$B8,$D0,$03,$A9
	.byte	$0A,$2C,$A5,$56,$4A,$18,$69,$06,$C9,$1A,$90,$02,$A9,$1A,$38,$FD
	.byte	$A3,$C2,$20,$E6,$EF,$A0,$00,$BD,$A4,$C1,$85,$48,$BD,$A5,$C1,$85
	.byte	$49,$A9,$00,$18,$65,$54,$91,$48,$C8,$C8,$A9,$80,$18,$65,$53,$91
	.byte	$48,$BD,$A6,$C1,$85,$48,$BD,$A7,$C1,$85,$49,$A9,$80,$91,$48,$BD
	.byte	$A8,$C1,$85,$48,$BD,$A9,$C1,$85,$49,$A9,$80,$91,$48,$BD,$A2,$C1
	.byte	$85,$48,$BD,$A3,$C1,$85,$49,$A5,$53,$18,$69,$88,$91,$48,$88,$88
	.byte	$A5,$54,$18,$69,$00,$91,$48,$60,$20,$0D,$F6,$A5,$92,$C9,$23,$D0
	.byte	$03,$A9,$A0,$2C,$A9,$1A,$18,$65,$92,$85,$CB,$A5,$82,$38,$E9,$A4
	.byte	$20,$E6,$EF,$BD,$A2,$C1,$85,$48,$BD,$A3,$C1,$85,$49,$A5,$CB,$91
	.byte	$48,$88,$A9,$98,$18,$65,$53,$91,$48,$BD,$A4,$C1,$85,$48,$BD,$A5
	.byte	$C1,$85,$49,$A9,$90,$18,$65,$53,$91,$48,$C8,$A5,$CB,$91,$48,$88
	.byte	$60,$A0,$07,$A2,$07,$BD,$A2,$C1,$85,$49,$BD,$A1,$C1,$85,$48,$A9
	.byte	$A0,$91,$48,$CA,$CA,$10,$EE,$60,$A5,$88,$2A,$B0,$0C,$A5,$B7,$29
	.byte	$0F,$69,$30,$85,$6E,$A9,$47,$D0,$04,$A9,$20,$85,$6E,$85,$6F,$60
	.byte	$A5,$E1,$29,$04,$F0,$0F,$A5,$4F,$29,$07,$D0,$0D,$A5,$4F,$29,$08
	.byte	$F0,$03,$A9,$0E,$2C,$A9,$06,$85,$2D,$A5,$B7,$29,$40,$F0,$03,$A9
	.byte	$1C,$2C,$A9,$06,$85,$2E,$A5,$B7,$2A,$90,$03,$A9,$36,$2C,$A9,$06
	.byte	$85,$29,$A5,$88,$29,$70,$F0,$0C,$C9,$10,$F0,$0B,$C9,$20,$F0,$0A
	.byte	$C9,$40,$F0,$09,$A9,$06,$2C,$A9,$C4,$2C,$A9,$48,$2C,$A9,$4D,$85
	.byte	$2B,$60,$A9,$74,$8D,$AD,$24,$8D,$C0,$24,$8D,$D8,$24,$8D,$EB,$24
	.byte	$A6,$CA,$F0,$18,$30,$16,$A5,$BF,$C9,$02,$F0,$10,$BD,$03,$C5,$85
	.byte	$48,$BD,$07,$C5,$85,$49,$A0,$03,$A9,$94,$91,$48,$A5,$76,$10,$26
	.byte	$A5,$40,$C9,$54,$D0,$2C,$A5,$5D,$C9,$0A,$F0,$0D,$A9,$00,$85,$30
	.byte	$85,$40,$A9,$22,$85,$2C,$85,$41,$60,$A9,$BE,$85,$30,$85,$40,$A9
	.byte	$26,$85,$2C,$85,$41,$60,$A9,$54,$85,$30,$85,$40,$A9,$22,$85,$2C
	.byte	$85,$41,$60,$A5,$B8,$D0,$01,$60,$C9,$06,$B0,$FB,$C9,$03,$D0,$05
	.byte	$A9,$00,$85,$31,$60,$A2,$03,$A5,$90,$4A,$4A,$C9,$0A,$B0,$0B,$CA
	.byte	$C9,$05,$B0,$06,$CA,$C9,$02,$B0,$01,$CA,$86,$D3,$A0,$01,$B9,$93
	.byte	$00,$4A,$4A,$4A,$4A,$85,$CB,$B9,$E9,$00,$18,$A6,$CB,$7D,$B3,$C4
	.byte	$29,$0F,$A6,$D3,$7D,$AF,$C4,$AA,$BD,$73,$C4,$99,$58,$00,$88,$10
	.byte	$DD,$A5,$69,$85,$31,$A0,$04,$98,$4A,$4A,$AA,$B5,$58,$85,$CB,$B5
	.byte	$95,$85,$5A,$A9,$31,$38,$F5,$93,$18,$65,$86,$C9,$15,$90,$02,$A9
	.byte	$18,$20,$E6,$EF,$BD,$C4,$C1,$85,$48,$BD,$C5,$C1,$85,$49,$A5,$CB
	.byte	$91,$48,$C8,$C8,$A9,$90,$18,$65,$53,$91,$48,$20,$A9,$F7,$BD,$C0
	.byte	$C1,$85,$48,$BD,$C1,$C1,$85,$49,$A9,$A0,$91,$48,$BD,$C2,$C1,$85
	.byte	$48,$BD,$C3,$C1,$85,$49,$A5,$53,$18,$69,$98,$91,$48,$20,$A9,$F7
	.byte	$88,$88,$A5,$CB,$91,$48,$88,$88,$88,$88,$10,$9B,$60,$C8,$A5,$5A
	.byte	$91,$48,$88,$60,$A9,$65,$38,$E5,$DA,$18,$69,$0F,$C9,$77,$90,$02
	.byte	$A9,$77,$85,$62,$A5,$B8,$C9,$05,$F0,$03,$4C,$D0,$F8,$A5,$98,$10
	.byte	$25,$29,$0F,$F0,$01,$60,$A9,$AF,$85,$49,$A9,$88,$85,$48,$A4,$5F
	.byte	$C4,$60,$F0,$02,$C6,$5F,$B9,$C7,$C4,$18,$65,$48,$85,$48,$A9,$1B
	.byte	$A4,$FD,$A2,$0E,$D0,$39,$A6,$C9,$BD,$B7,$C4,$85,$49,$BD,$BF,$C4
	.byte	$85,$48,$A5,$B3,$4A,$4A,$4A,$4A,$A8,$C9,$03,$90,$02,$A9,$03,$85
	.byte	$60,$B9,$C7,$C4,$18,$65,$48,$85,$48,$C0,$05,$90,$08,$A9,$DA,$85
	.byte	$48,$A9,$BF,$85,$49,$A9,$05,$85,$5F,$A9,$0A,$A6,$FD,$A0,$06,$85
	.byte	$25,$86,$26,$84,$27,$A5,$62,$20,$E6,$EF,$86,$62,$A9,$0A,$85,$44
	.byte	$A9,$1F,$85,$45,$A9,$10,$85,$61,$A2,$18,$A0,$04,$A9,$00,$C6,$53
	.byte	$30,$07,$91,$44,$88,$10,$FB,$30,$27,$B1,$48,$91,$44,$88,$10,$F9
	.byte	$C6,$49,$C6,$61,$F0,$16,$A5,$61,$C9,$08,$D0,$14,$A5,$48,$38,$E9
	.byte	$05,$85,$48,$A5,$49,$18,$69,$08,$85,$49,$D0,$04,$A9,$08,$85,$53
	.byte	$C6,$45,$CA,$F0,$16,$8A,$4A,$B0,$C1,$4A,$B0,$BE,$4A,$B0,$BB,$A5
	.byte	$44,$E9,$04,$85,$44,$A9,$1F,$85,$45,$D0,$AF,$20,$D0,$F8,$38,$A5
	.byte	$77,$A6,$C9,$F0,$02,$E0,$04,$E9,$06,$85,$63,$A6,$62,$A9,$0F,$85
	.byte	$62,$A0,$03,$BD,$CE,$C1,$85,$48,$BD,$CF,$C1,$85,$49,$A5,$63,$91
	.byte	$48,$E8,$E8,$A0,$00,$A5,$62,$38,$E9,$05,$91,$48,$85,$62,$D0,$E1
	.byte	$60,$A0,$07,$2C,$A0,$03,$A2,$16,$BD,$D2,$C1,$85,$48,$BD,$D3,$C1
	.byte	$85,$49,$A9,$A0,$91,$48,$CA,$CA,$D0,$EE,$60,$A5,$88,$29,$0F,$C9
	.byte	$01,$D0,$01,$60,$20,$CD,$F8,$A6,$BF,$E0,$03,$B0,$64,$A5,$99,$C9
	.byte	$12,$F0,$0C,$A5,$E1,$29,$08,$F0,$06,$A5,$99,$18,$69,$14,$2C,$A5
	.byte	$99,$85,$CC,$A9,$5F,$A6,$B8,$F0,$0D,$38,$E5,$9D,$A6,$5E,$86,$3F
	.byte	$A2,$A8,$86,$CB,$D0,$06,$E5,$9B,$A2,$A8,$86,$CB,$20,$E6,$EF,$A5
	.byte	$53,$18,$65,$CB,$85,$53,$A9,$03,$85,$CB,$A0,$04,$BD,$D0,$C1,$85
	.byte	$48,$BD,$D1,$C1,$85,$49,$A5,$CC,$91,$48,$C8,$C8,$A5,$53,$38,$E9
	.byte	$08,$91,$48,$85,$53,$C8,$A5,$AE,$91,$48,$E8,$E8,$C6,$CB,$D0,$DA
	.byte	$60,$A9,$44,$85,$3D,$A9,$CA,$85,$3E,$A9,$CD,$85,$3F,$BC,$F4,$C4
	.byte	$8C,$74,$23,$C8,$C8,$8C,$42,$23,$A9,$A8,$8D,$44,$23,$8D,$76,$23
	.byte	$A9,$4C,$8D,$45,$23,$8D,$77,$23,$60,$A0,$03,$A2,$0E,$A5,$B8,$C9
	.byte	$01,$F0,$21,$C9,$04,$F0,$1D,$C9,$05,$F0,$19,$AD,$17,$23,$C9,$A0
	.byte	$F0,$11,$BD,$F8,$C1,$85,$48,$BD,$07,$C2,$85,$49,$A9,$A0,$91,$48
	.byte	$CA,$10,$EF,$60,$AD,$17,$23,$C9,$A0,$D0,$12,$BD,$F8,$C1,$85,$48
	.byte	$BD,$07,$C2,$85,$49,$BD,$16,$C2,$91,$48,$CA,$10,$EE,$60,$A2,$05
	.byte	$BD,$E1,$E5,$9D,$BE,$26,$CA,$10,$F7,$A9,$00,$8D,$C4,$26,$A9,$18
	.byte	$8D,$C5,$26,$A9,$00,$8D,$C6,$26,$A2,$00,$BD,$C4,$26,$9D,$C7,$26
	.byte	$BD,$C5,$26,$9D,$C8,$26,$BD,$C6,$26,$18,$69,$1A,$9D,$C9,$26,$90
	.byte	$03,$FE,$C8,$26,$E8,$E8,$E8,$E0,$D8,$90,$DF,$A9,$80,$8D,$C4,$26
	.byte	$A0,$00,$B9,$02,$E6,$99,$9C,$27,$C8,$C0,$33,$D0,$F5,$60,$A6,$5D
	.byte	$E0,$09,$D0,$13,$A9,$BE,$85,$30,$85,$40,$A9,$26,$85,$2C,$85,$41
	.byte	$E6,$5D,$A9,$84,$85,$3E,$60,$B0,$FD,$BD,$D3,$C4,$85,$42,$BD,$DC
	.byte	$C4,$85,$43,$A2,$07,$A0,$0F,$B9,$E7,$C4,$91,$5B,$88,$10,$F8,$A9
	.byte	$10,$20,$70,$FA,$A0,$09,$B1,$42,$C0,$06,$F0,$04,$C0,$02,$D0,$04
	.byte	$8A,$18,$71,$42,$91,$5B,$88,$10,$ED,$A9,$0A,$20,$70,$FA,$CA,$10
	.byte	$D4,$E6,$5D,$60,$18,$65,$5B,$85,$5B,$90,$02,$E6,$5C,$60,$A9,$3F
	.byte	$38,$E5,$A1,$85,$78,$A5,$AA,$4A,$4A,$4A,$4A,$85,$67,$A9,$03,$85
	.byte	$5B,$A9,$18,$85,$5C,$A9,$48,$85,$65,$A0,$00,$84,$68,$A5,$86,$18
	.byte	$65,$DA,$AA,$F0,$03,$20,$97,$FB,$A5,$AB,$85,$61,$A5,$AD,$85,$62
	.byte	$A5,$AC,$85,$63,$20,$77,$FB,$A5,$AB,$38,$E5,$67,$85,$61,$A5,$AC
	.byte	$18,$65,$67,$85,$63,$A5,$A8,$F0,$05,$85,$66,$20,$09,$FB,$A5,$62
	.byte	$85,$68,$A2,$01,$20,$97,$FB,$A5,$61,$18,$65,$67,$65,$67,$85,$61
	.byte	$A5,$63,$38,$E5,$67,$E5,$67,$85,$63,$20,$77,$FB,$A5,$A9,$C9,$02
	.byte	$90,$16,$A6,$67,$20,$97,$FB,$A9,$A0,$85,$61,$85,$63,$A5,$68,$85
	.byte	$62,$A5,$A9,$85,$66,$20,$09,$FB,$A2,$48,$4C,$97,$FB,$A2,$00,$C6
	.byte	$65,$30,$50,$A5,$63,$38,$E5,$61,$F0,$29,$20,$60,$FB,$BD,$00,$C1
	.byte	$C9,$02,$F0,$1F,$E4,$78,$F0,$03,$A9,$A0,$2C,$A5,$62,$91,$5B,$A9
	.byte	$04,$20,$73,$FC,$A9,$A0,$91,$5B,$A9,$04,$20,$73,$FC,$A9,$A0,$91
	.byte	$5B,$D0,$16,$A5,$61,$91,$5B,$A9,$04,$20,$73,$FC,$A5,$62,$91,$5B
	.byte	$A9,$04,$20,$73,$FC,$A5,$63,$91,$5B,$A9,$12,$20,$73,$FC,$E8,$E4
	.byte	$66,$D0,$AC,$60,$C6,$61,$E6,$63,$A5,$68,$18,$65,$AF,$85,$68,$90
	.byte	$09,$A5,$A7,$10,$03,$C6,$62,$2C,$E6,$62,$60,$C6,$65,$30,$1B,$A5
	.byte	$61,$91,$5B,$A9,$04,$20,$73,$FC,$A5,$62,$91,$5B,$A9,$04,$20,$73
	.byte	$FC,$A5,$63,$91,$5B,$A9,$12,$20,$73,$FC,$60,$C6,$65,$30,$1E,$A9
	.byte	$A0,$91,$5B,$A9,$04,$20,$73,$FC,$A9,$A0,$91,$5B,$A9,$04,$20,$73
	.byte	$FC,$A9,$A0,$91,$5B,$A9,$12,$20,$73,$FC,$CA,$D0,$DE,$60,$A9,$00
	.byte	$85,$5B,$A9,$18,$85,$5C,$A5,$AE,$C9,$A0,$90,$02,$A9,$A0,$85,$68
	.byte	$A9,$48,$85,$65,$A0,$0F,$A9,$99,$38,$E5,$A4,$90,$66,$F0,$04,$AA
	.byte	$20,$62,$FC,$A6,$A3,$F0,$56,$A5,$B0,$85,$61,$C9,$9C,$D0,$03,$A9
	.byte	$04,$2C,$A9,$02,$85,$63,$49,$FF,$18,$69,$01,$29,$1F,$09,$E0,$85
	.byte	$62,$98,$38,$E9,$03,$B0,$02,$C6,$5C,$A8,$E4,$A3,$B0,$03,$20,$51
	.byte	$FC,$C6,$65,$30,$2D,$A5,$61,$18,$65,$63,$85,$61,$91,$5B,$A9,$01
	.byte	$20,$73,$FC,$A5,$62,$91,$5B,$A9,$02,$20,$73,$FC,$A5,$68,$91,$5B
	.byte	$A9,$17,$20,$73,$FC,$CA,$D0,$D9,$A9,$03,$20,$73,$FC,$A2,$48,$4C
	.byte	$62,$FC,$60,$85,$61,$49,$FF,$69,$01,$C5,$A3,$B0,$F0,$A5,$A3,$65
	.byte	$61,$AA,$4C,$E3,$FB,$8A,$48,$A5,$61,$18,$65,$63,$E8,$E4,$A3,$D0
	.byte	$F9,$85,$61,$68,$AA,$60,$C6,$65,$30,$0C,$A9,$A0,$91,$5B,$A9,$1A
	.byte	$20,$73,$FC,$CA,$D0,$F0,$60,$84,$64,$18,$65,$64,$A8,$90,$02,$E6
	.byte	$5C,$60,$A5,$70,$29,$7F,$F0,$07,$A9,$00,$AA,$A0,$48,$D0,$06,$A9
	.byte	$18,$A2,$1E,$A0,$A0,$85,$2F,$86,$33,$8C,$C6,$24,$60,$A5,$4F,$29
	.byte	$03,$A8,$BE,$D9,$C5,$BD,$CF,$C5,$85,$49,$CA,$BD,$CF,$C5,$85,$48
	.byte	$A0,$23,$B1,$48,$C9,$8D,$90,$03,$A9,$01,$2C,$A9,$ED,$85,$64,$B1
	.byte	$48,$38,$E5,$64,$91,$48,$88,$88,$88,$88,$10,$F3,$CA,$10,$D6,$60
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte	$FF,$FF,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00

START:
	JMP	LEB49	;3

	;############
	ORG	$FF80
	;############

        ; reserved for encryption
	.byte	$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00

	.byte	$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00

	.byte	$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00

	.byte	$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00
	.byte	$00,$00,$00,$00,$00,$00,$00,$00

        ORG     $FFF8
        .byte   $FF     ; Region verification
        .byte   $87     ; Starts at $8000

	;.word   INTERRUPT
	.byte	$1C,$EB

	.word	START

	;.word	BRKroutine
	.byte	$A5,$D4
