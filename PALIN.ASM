data segment
a db 'madam$'
len equ $-a-1
ans db 00h
data ends
code segment
assume cs:code,ds:data,es:data
start:mov ax,data
        mov ds,ax
        mov es,ax
        mov ch,00h
        mov cl,len
        lea si,a

        lea di,a+len-1
 com:mov al,[si]
        cmp [di],al
        jne no
        inc si
        dec di
        dec cl
        cmp cl,00h
        jne com
        mov ans,01h
       jmp end1
no: mov ans,00h
end1:mov ah,4ch
        int 21h
        code ends
end start
