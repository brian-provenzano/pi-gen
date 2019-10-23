#!/bin/bash -e

install -m 644 files/config.txt "${ROOTFS_DIR}/boot/"

echo ">> CHECK IF INSTALLED NEW K3S CONFIG.TXT"
echo "${ROOTFS_DIR}"
cat "${ROOTFS_DIR}/boot/config.txt"
