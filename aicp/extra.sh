#!/bin/bash
source $HOME/CONFIG
source $SCRIPTS/.last
rm $HD/$ROM/device/motorola/ocean/*_ocean.mk
rm $HD/$ROM/device/motorola/ocean/*.dependencies
cp -r -a $SCRIPTS/$ROM/device/* $HD/$ROM/device/motorola/ocean
cp -r -a $SCRIPTS/$ROM/common/* $HD/$ROM/device/motorola/sdm632-common
#cp -r -a $SCRIPTS/$ROM/device/apns-conf.xml $HD/$ROM/vendor/$ROM/prebuilt/common/etc/apns-conf.xml
cp -r -a $SCRIPTS/$ROM/Android.mk $HD/$ROM/vendor/$ROM/prebuilt/common/Android.mk

rm -rf $HD/$ROM/packages/providers/ContactsProvider $HD/$ROM/packages/apps/Contacts $HD/$ROM/packages/inputmethods/LatinIME
git clone https://github.com/LineageOS/android_packages_providers_ContactsProvider -b lineage-17.1 $HD/$ROM/packages/providers/ContactsProvider
git clone https://github.com/LineageOS/android_packages_apps_Contacts -b lineage-17.1 $HD/$ROM/packages/apps/Contacts
git clone https://github.com/LineageOS/android_packages_inputmethods_LatinIME -b lineage-17.1 $HD/$ROM/packages/inputmethods/LatinIME
