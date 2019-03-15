data segment
a db 2h,3h,4h,1h,?
ele db 1h
pos db 03h
data ends
code segment
assume cs:code,ds:data
start:mov ax,data
        mov ds,ax
        lea si,a
        add si,03h
        mov cl,05h
        sub cl,pos
loop1:mov al,[si]
      mov [si+1],al
      dec si
      loop loop1
      lea si,a
      add si,pos
      sub si,01h
      mov al,ele
      mov [si],al

      mov ah,4ch
      int 21h
      code ends
end start
