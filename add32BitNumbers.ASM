;Add two 32 bit numbers
ASSUME CS:CODE,DS:DATA
INCLUDE IO.H
DATA SEGMENT
	NUM1 DD 20304100H
	NUM2 DD 14500672H
	RESULT DD 00000000H
DATA ENDS

CODE SEGMENT
START:
	MOV AX,DATA
	MOV DS,AX
	
	MOV AX,WORD PTR NUM1
	MOV BX,WORD PTR NUM2
	ADD AX,BX
	MOV WORD PTR RESULT,AX
	MOV AX,WORD PTR NUM1+2
	MOV BX,WORD PTR NUM2+2
	ADC AX,BX
	MOV WORD PTR RESULT+2,AX
	MOV BX,WORD PTR RESULT
	
	MOV AH,4CH
	INT 21H
	CODE ENDS
END START
