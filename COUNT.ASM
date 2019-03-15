data segment
a db 'sam$'
len equ $-a-1
b db 'a'
count db 00h
data ends
code segment  
assume cs:code,ds:data,es:data
start:mov ax,data
        mov ds,ax
        mov es,ax

        lea di,a
        mov cl,len
        mov bl,00h
        mov al,b
        cld
loop1:repne scasb
        jz incre
here1 : jcxz here
        jmp loop1
incre:inc bl
        jmp here1
here:mov count,bl
        mov ah,4ch
        int 21h
        code ends
end start
