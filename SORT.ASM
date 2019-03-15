data segment
str db "asdf"
data ends
code segment
assume cs:code,ds:data,es:data
start:mov ax,data
        mov ds,ax
        mov es,ax

        mov cl,4
        mov bl,4
 outer:lea si,str
        mov bl,4
 inner:mov al,[si]
        cmp al,[si+1]
        ja change
here  :inc si
        dec bl
        cmp bl,01h
        jne inner
        dec cl
        cmp cl,01h
        jne outer
        jmp end1
change:xchg al,[si+1]
        mov [si],al
        jmp here

end1 :  mov ah,4ch
        int 21h
        code ends
        end start
