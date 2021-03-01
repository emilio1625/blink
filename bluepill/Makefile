run: main.elf openocd.gdb openocd.cfg
	killall openocd -q || :
	openocd &
	arm-none-eabi-gdb -x openocd.gdb -q main.elf

main.elf: main.o bluepill.ld
	arm-none-eabi-ld -T bluepill.ld -o main.elf main.o 

main.o: main.c
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -c -g -o main.o main.c

clean:
	rm -rf main.o main.elf