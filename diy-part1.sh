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
#

# Uncomment a feed source
#mkdir -p package/base-files/files/config
#echo 0xDEADBEEF > package/base-files/files/config/google_fu_mode
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
cp feeds.conf.default feeds.conf
echo "src-git helloworld https://github.com/fw876/helloworld">>feeds.conf
#sed -i 's/export GOPROXY/#export GOPROXY/g' package/lean/UnblockNeteaseMusicGo/Makefile;
#sed -i 's/export GOPROXY/#export GOPROXY/g' package/lean/v2ray-plugin/Makefile;
# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
