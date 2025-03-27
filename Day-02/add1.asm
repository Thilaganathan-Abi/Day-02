.model small
.stack 100h
.data

msg1 db "Number 01:$"
msg2 db "Number 02:$"

msg3 db "Addition of num1 and num2:$"
n1 db 0
n2 db 0

.code
start:

mov ax,@data
mov ds,ax

mov dx,offset msg1
mov ah,09h
int 21h

mov ah,01h
int 21h
sub al,48
mov n1,al

mov dl,09h
mov ah,02h
int 21h

mov dx,offset msg2
mov ah,09h
int 21h

mov ah,01h
int 21h
sub al,48
mov n2,al

mov dl,09h
mov ah,02h
int 21h

mov dx,offset msg3
mov ah,09h
int 21h

mov dl,n1
mov dl,n2

add dl,48
mov ah,02h
int 21h

mov ax,4c00h
int 21h

end start
