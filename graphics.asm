[BITS 16]
[ORG 0x7C00]

%macro draw_pixel 3
	mov al, %1
	mov bh, 0
	mov cx, %2
	mov dx, %3
	mov ah, 0xC
	int 0x10
%endmacro

start:
	mov ah, 0
	mov al, 0x13
	int 0x10
	mov si, 300
.loop:
	draw_pixel 2, si, 15
	sub si, 1
	jnz .loop

halt:
	cli
	hlt

TIMES 510 - ($ - $$) db 0
db 0x55
db 0xAA
