data segment
a db 3 dup(0)
up db 5h
down db 10h
data ends
code segment
assume cs:code,ds:data
start:mov ax,data
        mov ds,ax
        lea si,a
here: 
      mov bl,2
prime:mov ah,00h
      mov al,up
      div bl
      cmp ah,00h
      je next
      inc bl
      cmp bl,up
      jne prime
      mov al,up
      mov [si],al
next: mov al,up
      inc al
      mov up,al
      cmp al,down
      jb here
      jmp end1

end1:mov ah,4ch
        int 21h
        code ends
        end start
