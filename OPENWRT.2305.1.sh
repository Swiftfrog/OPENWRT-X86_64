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

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Modify BCM57810
wget -O target/linux/x86/patches-5.15/993-bnx2x_warpcore_8727_2_5g_sgmii_txfault.patch https://raw.githubusercontent.com/Swiftfrog/OPENWRT-X86_64/main/993-bnx2x_warpcore_8727_2_5g_sgmii_txfault.patch

# 添加APP过滤模块
# git clone https://github.com/destan19/OpenAppFilter package/OpenAppFilter
# 添加AdguardHome
# git clone https://github.com/rufengsuixing/luci-app-adguardhome package/luci-app-adguardhome

# 添加argon主题
git clone https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon

# 添加edge主题
git clone https://github.com/kiddin9/luci-theme-edge.git package/luci-theme-edge
