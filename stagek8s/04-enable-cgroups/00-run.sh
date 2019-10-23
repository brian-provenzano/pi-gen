#!/bin/bash -e

on_chroot << EOF
# Enable cgroups in kernel on boot
params="$(head -n1 ${ROOTFS_DIR}/boot/cmdline.txt) cgroup_enable=cpuset cgroup_memory=1 cgroup_enable=memory"
echo $params | sudo tee "${ROOTFS_DIR}/boot/cmdline.txt"
EOF