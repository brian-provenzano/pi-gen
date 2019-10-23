#!/bin/bash -e

on_chroot << EOF
# Set GPU mem to lowest value of 16MB since this is a k8s node
echo -e "\ngpu_mem=16" >> "${ROOTFS_DIR}/boot/config.txt"
EOF
