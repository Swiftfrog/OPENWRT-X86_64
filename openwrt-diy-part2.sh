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

#passwall-package 
git clone https://github.com/xiaorouji/openwrt-passwall.git  package/passwall

# add upx
mkdir -p tools/ucl && wget -P tools/ucl https://raw.githubusercontent.com/coolsnowwolf/lede/master/tools/ucl/Makefile 
mkdir -p tools/upx && wget -P tools/upx https://raw.githubusercontent.com/coolsnowwolf/lede/master/tools/upx/Makefile
sed -i '23a\tools-y += ucl upx' tools/Makefile
sed -i '/builddir dependencies/a\$(curdir)/upx/compile := $(curdir)/ucl/compile' tools/Makefile

#update golang
pushd feeds/packages/lang
rm -rf golang && svn co https://github.com/openwrt/packages/trunk/lang/golang
popd
