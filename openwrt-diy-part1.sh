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

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
# 添加APP过滤模块
# git clone https://github.com/destan19/OpenAppFilter package/OpenAppFilter
# 添加AdguardHome
# git clone https://github.com/rufengsuixing/luci-app-adguardhome package/luci-app-adguardhome
# 添加Passwall
git clone https://github.com/xiaorouji/openwrt-passwall package/openwrt-passwall
# 添加poweroff
#git clone https://github.com/esirplayground/luci-app-poweroff.git package/luci-app-poweroff
# 添加argon主题
git clone https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
# 添加edge主题
git clone https://github.com/kiddin9/luci-theme-edge.git package/luci-theme-edge
