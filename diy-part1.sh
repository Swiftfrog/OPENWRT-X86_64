#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#sed -i 's/KERNEL_PATCHVER:=5.4/KERNEL_PATCHVER:=5.10/g' ./target/linux/x86/Makefile
sed -i 's/LINUX_VERSION-5.4 = .150/LINUX_VERSION-5.4 = .140/g' ./include/kernel-version.mk
sed -i 's/LINUX_KERNEL_HASH-5.4.150 = f424a9bbb05007f04c17f96a2e4f041a8001554a9060d2c291606e8a97c62aa2/LINUX_KERNEL_HASH-5.4.140 = 2c657a2df4f2e805ac50aeb39ecf5d1e4cb1501e7fcf15eafd14486b587f7e43/g' ./include/kernel-version.mk
# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
