#!/bin/bash
sync && echo 3 | sudo tee /proc/sys/vm/drop_caches
qemu-system-x86_64 -hda /dev/nbd0 -m 64