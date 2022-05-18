#!/bin/bash
source config.sh
rm -rf $HD/$ROM/hardware/qcom-caf/msm8996/audio
rm -rf $HD/$ROM/hardware/qcom/audio
git clone https://github.com/LineageOS/android_hawdware_qcom_audio -b lineage-17.1-caf-msm8996 $HD/$ROM/hardware/qcom-caf/msm8996/audio
git clone https://github.com/LineageOS/android_hawdware_qcom_audio -b lineage-17.1 $HD/$ROM/hardware/qcom/audio
cp -r -a $SCRIPT/$ROM/Android.bp $HD/$ROM/vendor/motorola/sdm632-common
