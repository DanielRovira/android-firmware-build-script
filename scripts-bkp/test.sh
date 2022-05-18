#!/bin/bash
#mkdir test
cd test
#mkdir vendor kernel device common
#cd vendor
#git clone https://github.com/Dark98/vendor_motorola-1 -b lineage-17.1 Dark98
#git clone https://github.com/luizdores/vendor_motorola -b lineage-17.1 Luiz
#git clone https://github.com/electimon/vendor_motorola_ocean -b r10.0 Elec10
#git clone https://github.com/electimon/vendor_motorola_ocean -b aicp10 Elec-aicp
#cd ..
cd device
git clone https://github.com/electimon/device_motorola_ocean -b r10.0 elec
git clone https://github.com/luizdores/android_device_motorola_ocean -b lineage-17.1 luiz
git clone https://github.com/Tailanbr/android_device_motorola_ocean -b lineage-17.1 tailan
cd .. 
cd common
git clone https://github.com/electimon/android_device_motorola_sdm632-common -b r10.0 elec
git clone https://github.com/luizdores/android_device_motorola_sdm632-common -b lineage-17.1 luiz
git clone https://github.com/erfanoabdi/android_device_motorola_sdm632-common -b lineage-17.1 erfan
cd ..
cd kernel
#git clone https://github.com/electimon/android_kernel_motorola_sdm632-1 -b lineage-17.1 elec
git clone https://github.com/luizdores/android_kernel_motorola_sdm632 -b lineage-17.1 luiz
git clone https://github.com/erfanoabdi/android_kernel_motorola_sdm632 -b lineage-17.1 erfan
git clone https://github.com/Tailanbr/android_kernel_motorola_sdm632 -b UPSTREAM tailan
cd .. 
