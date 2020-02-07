#!/bin/bash
sudo modprobe nbd max_part=3
sudo qemu-nbd -c /dev/nbd0 grub_test_mbr_uefi.img
sudo mkdir -p /mnt/image
sleep 1
sudo mount /dev/nbd0p3 /mnt/image
