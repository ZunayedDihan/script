repo init --depth=1 -u git://github.com/DerpFest-11/manifest.git -b 11
repo sync --force-sync --no-tags --no-clone-bundle
git clone https://github.com/DerpFest-Devices/device_xiaomi_daisy.git -b derp11 device/xiaomi/daisy
git clone https://github.com/ZunayedDihan/bleh_vendor-r.git -b bleh vendor/xiaomi/daisy
git clone https://github.com/Daisy-R-sources/kernel_xiaomi_sleepy.git -b LA.UM.9.6.2.r1 kernel/xiaomi/daisy
. build/envsetup.sh
lunch derp_daisy-userdebug
mka derp
