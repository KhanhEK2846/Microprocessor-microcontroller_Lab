$NOMOD51
$INCLUDE (8051.MCU)

      org   0000h
   
      jmp   Start

      org   0100h
Start:
	MOV DPTR, #VAR
	
	MOV R0,#2
	MOV R1,#4
	MOV R2,#5
	MOV R3,#9
	MOV R4,#5
	MOV R5,#0
      

Loop:
      lcall Cout
      LCALL Delay
      lcall Cout
      LCALL Delay
      lcall Cout
      LCALL Delay
      
      
     INC R5
      CJNE R5,#10,OK
      MOV R5,#0
      INC R4
      CJNE R4,#6,OK
      MOV R4,#0
      INC R3
      CJNE R3, #10,OK
      MOV R3,#0
      INC R2
      CJNE R2,#6,OK
      MOV R2,#0
      INC R1

      CJNE R0,#2, Re1
      CJNE R1,#5,OK
      MOV R1,#1
      MOV R0,#0
 
 Re1:
	CJNE R1,#10,OK
	 MOV R1,#0
	 INC R0
 OK:      
      jmp Loop

;====================================================================
Cout:
	lcall Delay
	lcall Delay
	 MOV P3, #20H
	 MOV A, R0
	 MOVC A, @A+DPTR
	 MOV P1, A
	 
	 MOV A, R2
	 MOVC A, @A+DPTR
	 MOV P0, A
	 
	 MOV A, R4
	 MOVC A, @A+DPTR
	 MOV P2, A
	 
	 lcall Delay
	lcall Delay
	
	 MOV P3, #10H
	 MOV A, R1
	 MOVC A, @A+DPTR
	 MOV P1, A 
	 
	 MOV A, R3
	 MOVC A, @A+DPTR
	 MOV P0, A 
	 
	 MOV A, R5
	 MOVC A, @A+DPTR
	 MOV P2, A
	 

	
	 ret
	 
Delay:       ;Delay 1ms
   mov r6,#125D
   mov r7,#125D
 Loop1:
   djnz r6,Loop1
 Loop2:
   djnz r7,Loop1

 ret

VAR:
      DB 3FH, 6H, 5BH, 4FH, 66H, 6DH, 7DH, 7H, 7FH,6FH

      END
