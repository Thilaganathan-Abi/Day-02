.model small
.stack 100h

.data
n db 5
m db 7

.code
start:

mov ax,@data
mov ds,ax

mov al,n
mul m

mov dl,al
add dl,48

mov ah,02h
int 21h

mov ax,4cooh
int 21h

end start