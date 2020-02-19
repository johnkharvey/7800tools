	processor 6502
	org $F000

	; This module inserts the 128-byte field for
	; use on the V7800 emulator


	; 0      Header version     - 1 byte
	.byte $01

	; 1..16  "ATARI7800      "  - 16 bytes
	.byte $41,$54,$41,$52,$49		; Atari
	.byte $37,$38,$30,$30			; 7800
	.byte $20,$20,$20,$20,$20,$20,$20	; (space)

	; 17..48 Cart title         - 32 bytes
	; Ours is "32 kilobytes header"
	.byte $33,$32				; 32
	.byte $20					; (space)
	.byte $6B,$69,$6C,$6F			; kilo
	.byte $62,$79,$74,$65,$73		; bytes
	.byte $20					; (space)
	.byte $68,$65,$61,$64,$65,$72		; header
	.byte $20,$20,$20,$20,$20,$20,$20	; (space)
	.byte $20,$20,$20,$20,$20,$20		; (space)

	; 49..52 data length        - 4 bytes
	; 16K header:
	; .byte $00,$00,$40,$00
	; 48K Header:
	; .byte $00,$00,$c0,$00
	; 32K Header:
	.byte $00,$00,$80,$00

	; 53..54 cart type          - 2 bytes
	;     bit 0 - Pokey cart
	;     bit 1 - Supercart bank switched
	;     bit 2 - Supercart RAM
	.byte $00,$00

	; 55     controller 1 type  - 1 byte
	.byte $01

	; 56     controller 2 type  - 1 byte
	;     0 = None
	;     1 = Joystick
	;     2 = Light Gun
	.byte $01

	; 57     cartridge region  - 1 byte
	;     0/$FF = NTSC
	;     1 = PAL
	.byte $FF

	; 58..99 Not used          - 42 bytes
	.byte $FF,$FF,$FF,$FF,$FF,$FF
	.byte $FF,$FF,$FF,$FF,$FF,$FF
	.byte $FF,$FF,$FF,$FF,$FF,$FF
	.byte $FF,$FF,$FF,$FF,$FF,$FF
	.byte $FF,$FF,$FF,$FF,$FF,$FF
	.byte $FF,$FF,$FF,$FF,$FF,$FF
	.byte $FF,$FF,$FF,$FF,$FF,$FF

	; 100..127 "ACTUAL CART DATA STARTS HERE" - 28 bytes
	.byte $41,$43,$54,$55,$41,$4c		; Actual
	.byte $20					; (space)
	.byte $43,$41,$52,$54			; Cart
	.byte $20					; (space)
	.byte $44,$41,$54,$41			; Data
	.byte $20					; (space)
	.byte $53,$54,$41,$52,$54,$53		; Starts
	.byte $20					; (space)
	.byte $48,$45,$52,$45			; Here

	incbin color.bin
