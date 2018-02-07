#Reference: http://www.devdrv.co.jp/linux/kernel26-makefile.htm
TARGET:= proc-sequence.ko

all: ${TARGET}

proc-sequence.ko: proc-sequence.c
	make -C /usr/src/kernels/`uname -r` M=`pwd` V=1 modules

clean:
	make -C /usr/src/kernels/`uname -r` M=`pwd` V=1 clean

obj-m:= proc-sequence.o

clean-files := *.o *.ko *.mod.[co] *~

