#!/bin/sh -eux
if [ $# -lt 2 ]; then
	echo 'usage: uninstall.sh <vendor_id> <product_id>'
fi
vendor_id=$1
product_id=$2
out=com.nfirvine.osx-lock-on-remove-usb-${vendor_id}-${product_id}.plist
launchctl unload ~/Library/LaunchAgents/$out
rm ~/Library/LaunchAgents/$out
sudo rm /usr/local/bin/osx-lock-on-remove-usb.sh