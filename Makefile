CC=arm-ostl-linux-gnueabi-gcc
CFLAGS=-g -mthumb -mfpu=neon-vfpv4 -mfloat-abi=hard -mcpu=cortex-a7 -O2 --sysroot=C:\SysGCC\stm32mp1\cortexa7t2hf-neon-vfpv4-ostl-linux-gnueabi\
EXEC_NAME=helloworld

.PHONY: build clean

build: helloworld.c
	$(CC) $(CFLAGS) $(CPPFLAGS) -o $(EXEC_NAME) helloworld.c

clean:
	rm -rf $(EXEC_NAME)

copy:
	scp helloworld root@192.168.7.1:/home/root

