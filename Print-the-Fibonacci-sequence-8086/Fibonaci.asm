.MODEL small
.STACK 100h
.DATA  
n dw 0
S1 db 21 DUP(0)
S2 db 21 DUP(0) 
N1 dw 10,13,"Nhap so n = $"
KQua db 10,13,"Chuoi so Fibonacci: $"
.CODE 
main proc  
    mov ax,@DATA
    mov ds,ax 
    mov cx,2 
    lea dx,N1
    mov ah,9
    int 21h 
    
Nhap_so:   
    mov  ax,n  
    mov bl,10
    mul bl
    mov n,ax
    
    mov ah,1
    int 21h
    sub al,30h
        
    mov bx,n 
    add ax,bx  
    mov ah,0
    mov n,ax       
    loop Nhap_so
    mov ah, 0
    int 16h
    
Xuat1:
    lea dx,KQua
    mov ah,9
    int 21h  
    mov cx,n 
    mov bp,0  ;So fibo thu bp
    mov bx,0   ;Mang
    mov S1[bx],1
    mov S2[bx],1 
       
Fibo:  
    cmp bp,0  
    jne Next1
    mov ah,2 
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    mov dl,'0'
    int 21h 
    inc bp
    loop Fibo
Next1:
    cmp bp,1
    jne Next2
    mov ah,2 
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    mov dl,'1'
    int 21h 
    inc bp
    loop Fibo
Next2:
    cmp bp,2
    jne Next3
    mov ah,2 
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    mov dl,'1'
    int 21h 
    inc bp
    loop Fibo
Next3:
    push cx

     
    mov bx,0
    mov al,0
    mov cx,21 

add32bit_1:
    mov al,S1[bx] 
    adc al,S2[bx]
    add al, 30h
    cmp al,'9'
    jna lower1
    sub al,10
    stc
    jmp next4
lower1: clc
next4: 
    mov S1[bx],al
    inc bx
    loop add32bit_1 
    
pre1: 
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h   
    mov bx,20
    mov cx,21
last1: 
    mov ah,2   
    mov dl,S1[bx]
    int 21h
    sub dl,30h
    mov S1[bx],dl 
    dec bx
    loop last1
    
    mov bx,0
    mov si,0
    mov al,0
    mov cx,21
    
Revert:
    mov al,S1[si]
    mov bl,S2[si]
    mov S1[si],bl
    mov S2[si],al
    inc si
    loop Revert 
    
    
   
             
final:
    mov cx,0 
    pop cx
    loop Fibo
     
     
     
    
    
    
end main 













