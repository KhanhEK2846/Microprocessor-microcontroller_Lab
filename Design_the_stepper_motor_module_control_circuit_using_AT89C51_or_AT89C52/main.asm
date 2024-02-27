

$NOMOD51
$INCLUDE (8051.MCU)

;====================================================================
; DEFINITIONS
;====================================================================

;====================================================================
; VARIABLES
;====================================================================

;====================================================================
; RESET and INTERRUPT VECTORS
;====================================================================

      ; Reset Vector
      org   0000h
      jmp   Start

;====================================================================
; CODE SEGMENT
;====================================================================

      org   0100h
Start:	
      mov tmod, #01h
      mov DPTR, #VAR      
      mov tl0,#0ffh
      mov th0,#0ffh 
      mov p0, #00h
      mov p1, #00h
      mov p2, #00h
      mov p3, #00h
      setb p0.0
      setb p0.1
      mov r0,#0
      mov r1,#0
      mov r2,#0
      lcall Delay

Loop:

O:	lcall Obverse
R:	lcall Reverse
S:	lcall Stop
      jmp Loop
      
Obverse:
O0:   jnb p0.0, O1
	 ret
O1:
      mov p2, #1b
      mov r2,#0
      mov r1,#4
      mov r0,#5
      lcall print
      jnb p0.0, O2
      ret
      
O2: mov p2,#11b
      mov r2,#0
      mov r1,#9
      mov r0,#0
      lcall print     
      jnb p0.0, O3
      ret
      
O3: mov p2, #10b
      mov r2,#1
      mov r1,#3
      mov r0,#5
      lcall print     
      jnb p0.0, O4
      ret
      
O4:mov p2, #110b
      mov r2,#1
      mov r1,#8
      mov r0,#0
      lcall print          
      jnb p0.0, O5
      ret
      
O5:mov p2, #100b
      mov r2,#2
      mov r1,#2
      mov r0,#5
      lcall print   
      jnb p0.0, O6
      ret
      
O6: mov p2, #1100b
      mov r2,#2
      mov r1,#7
      mov r0,#0
      lcall print 
      jnb p0.0, O7
      ret
      
O7: mov p2, #1000b
      mov r2,#3
      mov r1,#1
      mov r0,#5
      lcall print 
      jnb p0.0, O8
      ret

O8: mov p2, #1001b
      mov r2,#0
      mov r1,#0
      mov r0,#0
      lcall print 
      jnb p0.0, O9
      ret
O9: jmp Obverse

 Reverse:
Re0:jnb p0.1, Re1
	 ret
Re1:mov p2, #1000b
      mov r2,#0
      mov r1,#4
      mov r0,#5
      lcall print
      jnb p0.1, Re2
      ret
      
Re2:mov p2, #1100b
      mov r2,#0
      mov r1,#9
      mov r0,#0
      lcall print     
      jnb p0.1, Re3
      ret 
      
 Re3:mov p2, #100b
      mov r2,#1
      mov r1,#3
      mov r0,#5
      lcall print     
      jnb p0.1, Re4
      ret
      
Re4:mov p2, #110b
      mov r2,#1
      mov r1,#8
      mov r0,#0
      lcall print          
      jnb p0.1, Re5
      ret
      
Re5:mov p2, #10b
      mov r2,#2
      mov r1,#2
      mov r0,#5
      lcall print   
      jnb p0.1, Re6
      ret
      
Re6:mov p2,#11b
      mov r2,#2
      mov r1,#7
      mov r0,#0
      lcall print 
      jnb p0.1, Re7
      ret

Re7:mov p2, #1b
      mov r2,#3
      mov r1,#1
      mov r0,#5
      lcall print 
      jnb p0.1, Re8
      ret
   
Re8:mov p2, #1001b
      mov r2,#0
      mov r1,#0
      mov r0,#0
      lcall print 
      jnb p0.1, Re9
      ret  

Re9: jmp Reverse
      
Stop:
      mov p2, #1001b
      mov r2,#0
      mov r1,#0
      mov r0,#0
      lcall print        
      ret
Print:
 	 mov p3, #110b
	 mov a, r2
	 movc a, @a + DPTR
	 mov p1, a  
	 lcall Delay
	
 	 mov p3, #101b
	 mov a, r1
	 movc a, @a + DPTR
	 mov p1, a  
	 lcall Delay
	
 	 mov p3, #11b
	 mov a, r0
	 movc a, @a + DPTR
	 mov p1, a  
	 lcall Delay 
	 ret
	 
 Delay:
      setb tr0
      Again:	jnb tf0, Again
      clr tr0
      clr tf0
      ret
VAR:
      DB 3FH, 6H, 5BH, 4FH, 66H, 6DH, 7DH, 7H, 7FH,6FH      

;====================================================================
      END
