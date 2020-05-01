nasm -f elf32 kernel.asm -o kasm.o
gcc -m32 -c kernel.c -o kc.o
ld -m elf_i286 -T link.ld -o EnigmaOS/boot/kernel.bin kasm.o kc.o
qemu -kernel EnigmaOS/boot/kernel.bin
grub-mkrescue -o enigmaos.iso EnigmaOS/
