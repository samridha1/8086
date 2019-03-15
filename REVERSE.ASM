   data segment
   str1 db 'sam$'
   len1 equ $-str1-1
   str2 db len1 dup(0)
   data ends
   code segment
   assume cs:code,ds:data,es:data
   start:mov ax,data
        mov ds,ax
        mov es,ax
        lea si,str1
        add si,len1
        sub si,01h
        mov cx,len1
        lea di,str2
  loop1:mov al,[si]
        mov [di],al
        inc di
        dec si
        loop loop1
  code ends
  end start
