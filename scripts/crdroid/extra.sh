#!/bin/bash
source $HOME/.build_temp
source $MAIN/CONFIG
source $SCRIPTS/.last
#cp -r -a $SCRIPTS/$ROM/files/vendor_motorola_nairo_Android.bp $HD/$ROM/vendor/motorola/nairo/Android.bp
#cp -r -a $SCRIPTS/$ROM/files/vendor_motorola_sm7250-common_Android.bp $HD/$ROM/vendor/motorola/sm7250-common/Android.bp
#cp -r -a $SCRIPTS/$ROM/files/novatek_ts_fw.bin $HD/$ROM/out/target/product/nairo/recovery/root/vendor/firmware/novatek_ts_fw.bin
cp -r -a $SCRIPTS/$ROM/files/Frameworks-base_config.xml $HD/$ROM/overlay/frameworks/base/core/res/res/values/config.xml
cp -r -a $SCRIPTS/$ROM/files/SystemUI_config.xml $HD/$ROM/overlay/frameworks/base/packages/SystemUI/res/values/config.xml
