data segment
a db 02h,07h,01,03h,?
data ends
code segment
assume cs:code,ds:data
start:mov ax,data
        mov ds,ax
        lea si,a
        mov cl,04h
        sub cl,02h
        add si,02h
        mov al,[si]
        mov byte ptr[si],06h

loop1:inc si
        xchg [si],al
        loop loop1

        mov ah,4ch
        int 21h
        code ends
        end start
