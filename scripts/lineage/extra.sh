#!/bin/bash
source $HOME/.build_temp
source $MAIN/CONFIG
source $SCRIPTS/.last
cp -r -a $SCRIPTS/$ROM/files/vendor_motorola_nairo_Android.bp $HD/$ROM/vendor/motorola/nairo/Android.bp
cp -r -a $SCRIPTS/$ROM/files/vendor_motorola_sm7250-common_Android.bp $HD/$ROM/vendor/motorola/sm7250-common/Android.bp
cp -r -a $SCRIPTS/$ROM/files/novatek_ts_fw.bin $HD/$ROM/out/target/product/nairo/recovery/root/vendor/firmware/novatek_ts_fw.bin
