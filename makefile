assemble:
	nasm -f bin graphics.asm -o graphics.bin

run:
	qemu-system-x86_64 -fda graphics.bin

