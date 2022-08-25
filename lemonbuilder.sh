#!/usr/bin/env sh

smaliFile="smali/com/etechd/l3mon/IOSocket.smali"

if [ -d /data/data/com.termux/files/usr/share/lemon ]; then

    appPath="/data/data/com.termux/files/usr/share/lemon/server/app/factory/decompiled"
fi

read -p "👽 🇮🇵/🇺🇷🇱/🇭🇴🇸🇹 : " host        
read -p "👽 🇵🇴🇷🇹 : " port

sed -i "s#http.*#http://$host:$port?model=\"#" $appPath/$smaliFile

apktool b "$appPath" -o ~/lemon/lemon.apk
