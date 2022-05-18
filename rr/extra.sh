#!/bin/bash
source $HOME/CONFIG
source $SCRIPTS/.last
rm $HD/$ROM/device/motorola/ocean/*_ocean.mk
rm $HD/$ROM/device/motorola/ocean/*.dependencies
cp -r -a $SCRIPTS/$ROM/device/* $HD/$ROM/device/motorola/ocean
cp -r -a $SCRIPTS/$ROM/common/* $HD/$ROM/device/motorola/sdm632-common
cp -r -a $SCRIPTS/$ROM/apns-conf.xml $HD/$ROM/vendor/$ROM/prebuilt/common/etc/apns-conf.xml
