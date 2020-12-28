#!/bin/bash

echo "Select the base : "
echo "01. Clone DerpFest source"
echo "02. Clone Weeb Projkt source"
echo "03. Clone Bootleggers  source"
read base

if [ $base = 1 ]
then
repo init --depth=1 -u git://github.com/DerpFest-11/manifest.git -b 11
repo sync --force-sync --no-tags --no-clone-bundle
echo "Adding Device Tree, Vendor and Kernel Sources"
git clone https://github.com/DerpFest-Devices/device_xiaomi_daisy.git -b derp11 device/xiaomi/daisy
git clone https://github.com/ZunayedDihan/bleh_vendor-r.git -b bleh vendor/xiaomi/daisy
git clone https://github.com/Daisy-R-sources/kernel_xiaomi_sleepy.git -b LA.UM.9.6.2.r1 kernel/xiaomi/daisy

echo "Adding FM From LOS"
git clone  https://github.com/LineageOS/android_packages_apps_FMRadio -b lineage-17.1 packages/apps/FMRadio
git clone https://github.com/LineageOS/android_vendor_qcom_opensource_libfmjni -b lineage-17.1 vendor/qcom/opensource/libfmjni
git clone https://github.com/LineageOS/android_vendor_qcom_opensource_fm-commonsys -b lineage-17.1 vendor/qcom/opensource/fm-commonsys


fi

if [ $base = 2 ]
then
echo "Cloning Weeb Projkt sources along with vendor/weeb"
repo init --depth=1 -u https://github.com/WeebProjekt/platform_manifest -b cheese
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
git clone https://github.com/WeebProjekt/platform_vendor_weeb.git -b cheese vendor/weeb
echo "Now cloning Device tree, Vendor tree and Kernel source"
git clone https://github.com/ZunayedDihan/device_xiaomi_daisy01.git -b weebR device/xiaomi/daisy
git clone https://github.com/ZunayedDihan/bleh_vendor-r.git -b bleh vendor/xiaomi/daisy
git clone https://github.com/Daisy-R-sources/kernel_xiaomi_sleepy.git -b LA.UM.9.6.2.r1 kernel/xiaomi/daisy

fi

echo "Lol why do i do all the stuffs do something at least...."

