CC=arm-none-linux-gnueabihf-g++
CFLAGS=-g
CPPFLAGS= -Wall -std=c++11 -I./
EXEC_NAME=helloworld

.PHONY: build clean

build: helloworld.c
	$(CC) $(CFLAGS) $(CPPFLAGS) -o $(EXEC_NAME) helloworld.c

clean:
	rm -rf $(EXEC_NAME)

copy:
	scp helloworld root@192.168.7.1:/home/root

