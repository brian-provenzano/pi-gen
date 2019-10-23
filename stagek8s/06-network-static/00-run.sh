#!/bin/bash -e
##
# Modify this if you wish static ip (set the STATIC_IP env var in config )
##
if [ "${STATIC_IP}" == "1" ]; then
    tee -a /etc/dhcpcd.conf <<EOF
# override: set static IP
interface eth0
static ip_address=10.0.0.200/24
static routers=10.0.0.1
static domain_name_servers=1.1.1.1 8.8.8.8

interface wlan0
static ip_address=10.0.0.200/24
static routers=10.0.0.1
static domain_name_servers=1.1.1.1 8.8.8.8
EOF
fi
