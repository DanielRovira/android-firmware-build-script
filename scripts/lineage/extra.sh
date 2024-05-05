#!/bin/bash
source $HOME/.build_temp
source $MAIN/CONFIG
source $SCRIPTS/.last
cp -r -a $SCRIPTS/$ROM/files/Android.bp $HD/$ROM/vendor/motorola/nairo
cp -r -a $SCRIPTS/$ROM/files/novatek_ts_fw.bin $HD/$ROM/out/target/product/nairo/recovery/root/vendor/firmware
cp -r -a $SCRIPTS/$ROM/files/BoardConfig.mk $HD/$ROM/device/motorola/nairo

