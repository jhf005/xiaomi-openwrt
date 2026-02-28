#!/bin/bash

# 拉取 Lean 源码（如果已有则跳过）
[ -d "lede" ] || git clone https://github.com/coolsnowwolf/lede.git

# 进入源码目录
cd lede

# 添加插件源
git clone https://github.com/zhsj/easytier-openwrt.git package/easytier
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/luci-app-adguardhome

# 更新并安装 feeds
./scripts/feeds update -a
./scripts/feeds install -a
