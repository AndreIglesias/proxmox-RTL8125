#!/bin/bash

apt update && apt upgrade -y

apt install -y wget pve-headers-$(uname -r) build-essential dkms

# Select << 2.5G Ethernet LINUX driver r8125 for kernel up to 5.6 >> from this link:
#     https://www.realtek.com/en/component/zoo/category/network-interface-controllers-10-100-1000m-gigabit-ethernet-pci-express-software
# Solve the captcha and extract the temporary download link to replace to the one in the wget call

# Version downloaded
name=r8125-9.007.01

wget -O $name.tar.bz2 'https://realtekcdn.akamaized.net/rtdrivers/cn/nic1/r8125-9.007.01.tar.bz2?__token__=exp=00000000~acl=/rtdrivers/cn/nic1/r8125-9.007.01.tar.bz2~hmac=0000000000000000'

tar xvf $name.tar.bz2

rm $name.tar.bz2

cd $name

chmod +x autorun.sh

./autorun.sh
