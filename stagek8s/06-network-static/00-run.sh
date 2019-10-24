#!/bin/bash -e
##
# Modify this if you wish static ip (set the STATIC_IP env var in config )
# Currently this sets the eth0 and wlan (wifi interface) to same static IP (you will use one or the other usually)
##
echo ">> DO WE WANT STATIC IP SET? [${STATIC_IP}]"

if [[ ! -z "${STATIC_IP}" ]]; then
    tee -a "${ROOTFS_DIR}/etc/dhcpcd.conf" <<EOF
# override: set static IP
interface eth0
static ip_address=$ETH0_IPADDRESS
static routers=$ETH0_GATEWAY
static domain_name_servers=$ETH0_DNS

interface wlan0
static ip_address=$WLAN_IPADDRESS
static routers=$WLAN_GATEWAY
static domain_name_servers=$WLAN_DNS
EOF
    echo ">> SET STATIC IPS ... DONE!"
fi

echo ">> CHECK IF MODDED DHCPCD.CONF"
echo "${ROOTFS_DIR}"
cat "${ROOTFS_DIR}/etc/dhcpcd.conf"