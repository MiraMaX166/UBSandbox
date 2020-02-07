#!/bin/bash
sync && echo 3 | sudo tee /proc/sys/vm/drop_caches
sudo modprobe nbd max_part=3
sudo umount /mnt/image
sudo qemu-nbd -d /dev/nbd0
