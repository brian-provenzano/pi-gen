#!/bin/bash -e

install -m 644 files/cmdline.txt "${ROOTFS_DIR}/boot/"

echo ">> CHECK IF INSTALLED NEW K3S CMDLINE.TXT KERNEL LINES"
echo "${ROOTFS_DIR}"
cat "${ROOTFS_DIR}/boot/cmdline.txt"
