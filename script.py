repo init --depth=1 -u git://github.com/DerpFest-11/manifest.git -b 11
repo sync --force-sync --no-tags --no-clone-bundle
git clone https://github.com/DerpFest-Devices/device_xiaomi_daisy.git -b derp11 device/xiaomi/daisy
git clone https://github.com/ZunayedDihan/bleh_vendor-r.git -b bleh vendor/xiaomi/daisy
git clone https://github.com/Daisy-R-sources/kernel_xiaomi_sleepy.git -b LA.UM.9.6.2.r1 kernel/xiaomi/daisy
rm -rf hardware_qcom-caf_msm8996_display
rm -rf hardware_qcom-caf_msm8996_media
git clone https://github.com/ZunayedDihan/hardware_qcom-caf_msm8996_display.git -b eleven hardware_qcom-caf_msm8996_display
git clone https://github.com/ZunayedDihan/hardware_qcom-caf_msm8996_media.git  -b eleven hardware_qcom-caf_msm8996_media
. build/envsetup.sh
lunch derp_daisy-userdebug
mka derp
