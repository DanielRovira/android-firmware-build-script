#!/bin/bash
source $HOME/.build_temp
source $MAIN/CONFIG
source $SCRIPTS/.last
source $SCRIPTS/.shutdown
source $SCRIPTS/$ROM/config
echo ""$ROM"_$DEVICE-userdebug"
if [ -f "$SCRIPTS/$ROM/extra.sh" ]; then
bash $SCRIPTS/$ROM/extra.sh
fi
cd $HD/$ROM
#ccache -C
source ~/.bashrc
export USE_CCACHE=1
export CCACHE_DIR=$HD/.ccache
export CCACHE_EXEC=$(command -v ccache)
ccache -M $CSIZE
#make clean && make clobber
export SKIP_ABI_CHECKS=true
export ALLOW_MISSING_DEPENDENCIES=true
#export DONT_UNCOMPRESS_PRIV_APPS_DEXS=true
source $HD/$ROM/build/envsetup.sh
if [ $ROM = "lineage" ]; then 
croot
#brunch "$ROM"_$DEVICE-userdebug
brunch nairo
else
lunch "$ROM"_$DEVICE-userdebug
mka bacon
fi
mv $HD/*.zip $HD/builds
mv $HD/$ROM/out/target/product/$DEVICE/lineage-*.zip $HD
cp $HD/*.zip $SCRIPTS
#cp $HOME/logs/*.txt $SCRIPTS/scripts-bkp/logs
cd $HOME
#if [ $SHUT = "yes" ]; then 
#sudo shutdown -h $TIME
#fi
