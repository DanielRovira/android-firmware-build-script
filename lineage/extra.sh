#!/bin/bash
source $HOME/CONFIG
source $SCRIPTS/.last
cp -r -a $SCRIPTS/$ROM/device/* $HD/$ROM/device/motorola/ocean
cp -r -a $SCRIPTS/$ROM/common/* $HD/$ROM/device/motorola/sdm632-common
