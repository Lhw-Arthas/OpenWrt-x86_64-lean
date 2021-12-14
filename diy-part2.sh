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
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate


# Dokerd 校验码更新导致编译错误 #8423 https://github.com/coolsnowwolf/lede/issues/8423
rm -rf ./feeds/packages/utils/runc/Makefile
svn export https://github.com/openwrt/packages/trunk/utils/runc/Makefile ./feeds/packages/utils/runc/Makefile