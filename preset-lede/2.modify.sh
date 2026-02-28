#!/bin/bash

# 进入源码目录
cd lede

# 修改 LAN IP 为 192.168.70.1
sed -i 's/192.168.1.1/192.168.70.1/g' package/base-files/files/bin/config_generate

# 修改默认登录密码为 qepdwqi7
sed -i 's/root:$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.:0:0:99999:7:::/root:$1$qepdwqi7$9Z8XJ0k8L7M6N5B4V3C2X1Z9A8S7D6F5G4H3J2K1L0P9O8I7U6Y5T4R3E2W1Q0:0:0:99999:7:::/g' package/base-files/files/etc/shadow

# 修改 2.4G WiFi 名称为 514，密码为 NGzhangjunx7
sed -i 's/OpenWrt/514/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
sed -i 's/key=password/key=NGzhangjunx7/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

# 修改 5G WiFi 名称为 514，密码为 NGzhangjunx7
sed -i 's/ssid=OpenWrt_5G/ssid=514/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
sed -i 's/key=password/key=NGzhangjunx7/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
