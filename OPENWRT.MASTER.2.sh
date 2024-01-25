#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.99.1/g' package/base-files/files/bin/config_generate

wget -O include/kernel-defaults.mk https://raw.githubusercontent.com/Swiftfrog/OPENWRT-X86_64/main/version/kernel-defaults.mk
wget -O package/kernel/linux/Makefile https://raw.githubusercontent.com/Swiftfrog/OPENWRT-X86_64/main/version/Makefile
wget https://raw.githubusercontent.com/Swiftfrog/OPENWRT-X86_64/main/version/vermagic

# Modify BCM57810
# wget -O target/linux/x86/patches-5.15/993-bnx2x_warpcore_8727_2_5g_sgmii_txfault.patch https://raw.githubusercontent.com/Swiftfrog/OPENWRT-X86_64/main/993-bnx2x_warpcore_8727_2_5g_sgmii_txfault.patch

#update golang
#pushd feeds/packages/lang
#rm -rf golang && svn co https://github.com/openwrt/packages/branches/openwrt-22.03/lang/golang
#rm -rf golang && svn co https://github.com/coolsnowwolf/packages/trunk/lang/golang
#rm -rf golang && svn co https://github.com/immortalwrt/packages/trunk/lang/golang
#popd
