@echo off
if exist sd.bin goto run
qemu-img create -f raw sd.bin 64M

:run
qemu-system-arm -M vexpress-a9 -kernel rtthread.elf -serial vc -serial vc -sd sd.bin -S -s