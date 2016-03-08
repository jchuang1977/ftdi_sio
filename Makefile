obj-m := ftdi_sio.o
MODULE_NAME := ftdi_sio
KERNEL_DIR	:= /lib/modules/$(shell uname -r)/build


all:
	$(MAKE) -C $(KERNEL_DIR) M=$(PWD) modules

clean:
	$(MAKE) -C $(KERNEL_DIR) M=$(PWD) clean
