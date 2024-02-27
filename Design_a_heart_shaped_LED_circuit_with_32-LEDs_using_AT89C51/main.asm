
$NOMOD51
$INCLUDE (8051.MCU)

      org   0000h
      jmp   Start
    org   0100h
Start:	
      ; Write your code here



Loop:

lcall HieuUng1

lcall HieuUng2
lcall Delay

lcall HieuUng7
lcall Delay
lcall HieuUng7
lcall Delay
lcall HieuUng7
lcall Delay
lcall HieuUng7
lcall Delay
lcall HieuUng6
lcall Delay
lcall HieuUng3
lcall Delay

lcall HieuUng4
lcall HieuUng4
lcall HieuUng4

lcall HieuUng5
lcall Delay

jmp Loop

HieuUng1:

mov p0, #00h
mov p1, #00h
mov p2, #00h
mov p3, #00h
lcall Delay


mov p1, #01h
lcall Delay

mov p1, #02h
lcall Delay

mov p1, #04h
lcall Delay

mov p1, #08h
lcall Delay

mov p1, #10h
lcall Delay

mov p1, #20h
lcall Delay

mov p1, #40h
lcall Delay

mov p1, #80h
lcall Delay

mov p1, #00h

mov p0, #01h
lcall Delay

mov p0, #02h
lcall Delay

mov p0, #04h
lcall Delay

mov p0, #08h
lcall Delay

mov p0, #10h
lcall Delay

mov p0, #20h
lcall Delay

mov p0, #40h
lcall Delay

mov p0, #80h
lcall Delay

mov p0, #00h

mov p2, #01h
lcall Delay

mov p2, #02h
lcall Delay

mov p2, #04h
lcall Delay

mov p2, #08h
lcall Delay

mov p2, #10h
lcall Delay

mov p2, #20h
lcall Delay

mov p2, #40h
lcall Delay

mov p2, #80h
lcall Delay

mov p2, #00h

mov p3, #01h
lcall Delay

mov p3, #02h
lcall Delay

mov p3, #04h
lcall Delay

mov p3, #08h
lcall Delay

mov p3, #10h
lcall Delay

mov p3, #20h
lcall Delay

mov p3, #40h
lcall Delay

mov p3, #80h
lcall Delay

mov p3, #00h
ret


HieuUng2:
mov p1,#01h
lcall Delay

mov p1,#03h
lcall Delay

mov p1,#07h
lcall Delay

mov p1,#0fh
lcall Delay

mov p1,#1fh
lcall Delay

mov p1,#3fh
lcall Delay

mov p1,#7fh
lcall Delay

mov p1,#255d
call Delay

mov p0,#01h
lcall Delay

mov p0,#03h
lcall Delay

mov p0,#07h
lcall Delay

mov p0,#0fh
lcall Delay

mov p0,#1fh
lcall Delay

mov p0,#3fh
lcall Delay

mov p0,#7fh
lcall Delay

mov p0,#255d
call Delay

mov p2,#01h
lcall Delay

mov p2,#03h
lcall Delay

mov p2,#07h
lcall Delay

mov p2,#0fh
lcall Delay

mov p2,#1fh
lcall Delay

mov p2,#3fh
lcall Delay

mov p2,#7fh
lcall Delay

mov p2,#255d
call Delay

mov p3,#01h
lcall Delay

mov p3,#03h
lcall Delay

mov p3,#07h
lcall Delay

mov p3,#0fh
lcall Delay

mov p3,#1fh
lcall Delay

mov p3,#3fh
lcall Delay

mov p3,#7fh
lcall Delay

mov p3,#255d
ret

HieuUng6:

mov p0, #255d
mov p1, #255d
mov p2, #255d
mov p3, #255d
lcall Delay

mov p1,#254d
lcall Delay


mov p3,#7fh
lcall Delay

mov p3,#3fh
lcall Delay

mov p3,#1fh
lcall Delay

mov p3,#0fh
lcall Delay

mov p3,#07h
lcall Delay

mov p3,#03h
lcall Delay

mov p3,#01h
lcall Delay

mov p3,00h
lcall Delay


mov p2,#7fh
lcall Delay

mov p2,#3fh
lcall Delay

mov p2,#1fh
lcall Delay

mov p2,#0fh
lcall Delay

mov p2,#07h
lcall Delay

mov p2,#03h
lcall Delay

mov p2,#01h
lcall Delay

mov p2,00h
lcall Delay


mov p0,#7fh
lcall Delay

mov p0,#3fh
lcall Delay

mov p0,#1fh
lcall Delay

mov p0,#0fh
lcall Delay

mov p0,#07h
lcall Delay

mov p0,#03h
lcall Delay

mov p0,#01h
lcall Delay

mov p0,00h
lcall Delay


mov p1,#7eh
lcall Delay

mov p1,#3eh
lcall Delay

mov p1,#1eh
lcall Delay

mov p1,#0eh
lcall Delay

mov p1,#06h
lcall Delay

mov p1,#02h
lcall Delay

mov p1,#00h
lcall Delay


ret

HieuUng3:
mov p0,#01h
mov p1,#01h
mov p2,#01h
mov p3,#01h
lcall Delay


mov p0,#03h
mov p1,#03h
mov p2,#03h
mov p3,#03h
lcall Delay


mov p0,#07h
mov p1,#07h
mov p2,#07h
mov p3,#07h
lcall Delay


mov p0,#0fh
mov p1,#0fh
mov p2,#0fh
mov p3,#0fh
lcall Delay


mov p0,#1fh
mov p1,#1fh
mov p2,#1fh
mov p3,#1fh
lcall Delay


mov p0,#3fh
mov p1,#3fh
mov p2,#3fh
mov p3,#3fh
lcall Delay


mov p0,#7fh
mov p1,#7fh
mov p2,#7fh
mov p3,#7fh
lcall Delay



ret

HieuUng4:
mov p0,#127d
mov p1,#127d
mov p2,#127d
mov p3,#127d
lcall Delay


mov p0,#191d
mov p1,#191d
mov p2,#191d
mov p3,#191d
lcall Delay


mov p0,#223d
mov p1,#223d
mov p2,#223d
mov p3,#223d
lcall Delay


mov p0,#239d
mov p1,#239d
mov p2,#239d
mov p3,#239d
lcall Delay


mov p0,#247d
mov p1,#247d
mov p2,#247d
mov p3,#247d
lcall Delay


mov p0,#251d
mov p1,#251d
mov p2,#251d
mov p3,#251d
lcall Delay


mov p0,#253d
mov p1,#253d
mov p2,#253d
mov p3,#253d
lcall Delay


mov p0,#254d
mov p1,#254d
mov p2,#254d
mov p3,#254d
lcall Delay


ret

HieuUng5:

mov p0,#7fh
mov p1,#7fh
mov p2,#7fh
mov p3,#7fh
lcall Delay


mov p0,#3fh
mov p1,#3fh
mov p2,#3fh
mov p3,#3fh
lcall Delay


mov p0,#1fh
mov p1,#1fh
mov p2,#1fh
mov p3,#1fh
lcall Delay


mov p0,#0fh
mov p1,#0fh
mov p2,#0fh
mov p3,#0fh
lcall Delay


mov p0,#07h
mov p1,#07h
mov p2,#07h
mov p3,#07h
lcall Delay


mov p0,#03h
mov p1,#03h
mov p2,#03h
mov p3,#03h
lcall Delay


mov p0,#01h
mov p1,#01h
mov p2,#01h
mov p3,#01h
lcall Delay


ret

HieuUng7:

mov p1,#170d
mov p0,#170d
mov p2,#170d
mov p3,#170d

lcall Delay


mov p1,#55h
mov p0,#55h
mov p2,#55h
mov p3,#55h

lcall Delay



ret

Delay:       ;Delay 1ms
   mov r6,#250D
   mov r7,#250D
 Loop1:
   djnz r6,Loop1
 Loop2:
   djnz r7,Loop1
 ret

ret
   

      END
