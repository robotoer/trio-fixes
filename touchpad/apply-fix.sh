#!/bin/bash

echo "Get the latest linux-source package, and untar its files somewhere."
echo "Kernel source should be located in /usr/src/linux-source-<VERSION>."
echo "Apply the patch to drivers/input/mouse/elantech.c."
echo "cd into the drivers/input/mouse directory."
echo "Compile the kernel module with: make -C /lib/modules/$(uname -r)/build M=$(pwd) modules."
echo "Unload the current psmouse.ko module: sudo modprobe -r psmouse."
echo "Make a backup of the original /lib/modules/$(uname -r)/kernel/drivers/input/mouse/psmouse.ko."
echo "Copy the new drivers/input/mouse/psmouse.ko to /lib/modules/$(uname -r)/kernel/drivers/input/mouse/psmouse.ko."
echo "Load the new psmouse.ko module: sudo modprobe psmouse."
