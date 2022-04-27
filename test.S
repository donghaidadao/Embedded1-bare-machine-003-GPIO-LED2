.text
.global _start

_start:
	LDR R0,=0x56000060
	MOV R1,#5
	STR R1,[R0]
	
	LDR R0,=0x56000064
	MOV R1,#0
	STR R1,[R0]

MAIN_LOOP:
	B MAIN_LOOP


