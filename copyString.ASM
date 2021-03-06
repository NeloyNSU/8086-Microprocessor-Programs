;Data block Transfer using string instructions
; Copy string
ASSUME CS:CODE,DS:DATA
INCLUDE IO.H

DATA SEGMENT
	PROMPT DB 13,10,"			Enter the string : ",0
	PCPY DB 13,10,"			String Copied : ",0
	STRN1 DB 20 DUP(0)
	STRN2 DB 20 DUP(0)
DATA ENDS

CODE SEGMENT
START:
	MOV AX,DATA
	MOV DS,AX
	MOV ES,AX
	
	MOV CX,0000H
	OUTPUT PROMPT
	INPUTS STRN1,20
	
	LEA SI,STRN1
	LEA DI,STRN2
	CLD
	REP MOVSB
	
	OUTPUT PCPY
	OUTPUT STRN2
	
	MOV AH,4CH
	INT 21H
	CODE ENDS
END START