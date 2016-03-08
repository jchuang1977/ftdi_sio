obj-m := ftdi_sio.o
MODULE_NAME := ftdi_sio
#KERNEL_DIR	:=/usr/src/linux-source-3.2.0/linux-3.2.0
KERNEL_DIR := $(shell echo "/lib/modules/`uname -r`/build")

all:
	$(MAKE) -C $(KERNEL_DIR) M=$(PWD) modules

clean:
	$(MAKE) -C $(KERNEL_DIR) M=$(PWD) clean
