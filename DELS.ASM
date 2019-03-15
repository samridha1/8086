 data segment
 a db 2h,3h,4h,6h,?
 b db 5h
 data ends
 code segment
 assume cs:code,ds:data
 start:mov ax,data
        mov ds,ax
        lea si,a
        mov al,b
        mov cl,04h
here: cmp [si],al
        ja chan
        loop here
chan:mov ah,[si]
        mov [si],al
        dec cl
loop1:inc si
        xchg al,[si]
        loop loop1
        code ends
end start
