.MODEL small
.STACK 100h
.DATA
S1 db 10 DUP(0)
S2 db 10 DUP(0) 
tmp db 11 DUP(0)
So1 db 10,13,"Moi nhap so thu 1 = $"  
So2 db 10,13,"Moi nhap so thu 2 = $" 
KQua db 10,13,"Tong 2 so vua nhap = $"   
.CODE   
main proc
    mov ax,@DATA
    mov ds,ax 
     
    mov bx,0  
    mov cx,1
    mov si,0
    mov di,0
       

    lea dx, So1
    mov ah,9
    int 21h 
number1:  
    cmp bx,10     ;Kiem tra co nhap qua 10 so k?
    je  after1 


    mov ah,1     ;Nhap ki tu
    int 21h 
     
    
    
    cmp al,0Dh     ;Kiem tra co phai enter
    je after1  
    
    
    cmp al,'0'     ;Kiem tra ki tu co trong khoang 0<x<9
    jb number1 
    cmp al,'9'
    ja number1
    
    sub al,30h
    mov tmp[bx],al
    inc bx 
    inc cx 
    jmp number1 
  
after1:
      dec bx 
      dec cx
loop1: 
    mov al,tmp[bx]
    mov S1[si],al
    
    inc si
    dec bx
    loop loop1  
    mov cx,1 
    mov bx,0
    lea dx, So2
    mov ah,9
    int 21h 
     
    
    
number2:   
    cmp bx,10     ;Kiem tra co nhap qua 10 so k?
    je  after2 


    mov ah,1     ;Nhap ki tu
    int 21h 
     
    
    
    cmp al,0Dh     ;Kiem tra co phai enter
    je after2  
    
    
    cmp al,'0'     ;Kiem tra ki tu co trong khoang 0<x<9
    jb number2 
    cmp al,'9'
    ja number2
    
    sub al,30h
    mov tmp[bx],al
    inc bx 
    inc cx 
    jmp number2
    
after2: 
    dec bx
    dec cx
loop2: 
    mov al,tmp[bx]
    mov S2[di],al
    
    inc di
    dec bx
    loop loop2  

    
     
    mov bx,0
    mov al,0
    mov cx,10 
    mov ah, 0
    int 16h
    
add32bit:
    mov al,S1[bx]
    
    adc al,S2[bx]
    add al, 30h
    cmp al,'9'
    jna lower
    sub al,10
    stc
    jmp next1
lower: clc
next1: 
    mov S1[bx],al
    inc bx
    loop add32bit    
    
    







    mov ah,2 
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h 
    lea dx, KQua
    mov ah,9
    int 21h
check:jnc pre
    mov ah,2 
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h 
    mov dl,'1'
    int 21h 
    dec bx
pre:    
    mov bx,9
    mov cx,10
last: 
    mov ah,2 
    ;mov dl,0dh
    ;int 21h
    ;mov dl,0ah
    ;int 21h 
    mov dl,S1[bx]
    int 21h 
    dec bx
    loop last
    mov dx, 4Ch
    int 21h
end main