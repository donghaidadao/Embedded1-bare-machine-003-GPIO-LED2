test: test.S
	arm-linux-gcc -g -c -o test.o test.S
	arm-linux-ld -Ttext 0x00000000 -g test.o -o test_elf
	
	arm-linux-objcopy -O binary -S test_elf test.bin
	arm-linux-objdump -D -m arm test_elf > test.dis
	
clean:
	rm -f test
	rm -f test.o
	rm -f test_elf
	