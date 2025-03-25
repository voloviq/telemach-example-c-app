CC=arm-ostl-linux-gnueabi-gcc
CFLAGS=-g -Wall -I./ -mthumb -mfpu=neon-vfpv4 -mfloat-abi=hard -mcpu=cortex-a7 -O2 --sysroot=C:\SysGCC\stm32mp1\cortexa7t2hf-neon-vfpv4-ostl-linux-gnueabi
EXEC_NAME=showtime
BUILD_DIR=out

.PHONY: build clean copy

build: ${BUILD_DIR} showtime.c
	$(CC) $(CFLAGS) -o ${BUILD_DIR}/$(EXEC_NAME) showtime.c

${BUILD_DIR}:
	mkdir -p ${BUILD_DIR}

clean:
	rm -rf ${BUILD_DIR}/$(EXEC_NAME)

copy:
	scp ${BUILD_DIR}/$(EXEC_NAME) root@192.168.7.1:/home/root

