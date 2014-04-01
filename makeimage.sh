#LOCAL_PATH := $(call my-dir)
#cp ~/github/kernel/evolve-1.8/arch/arm/boot/zImage ./tools
#MKELF := ./tools/mkelf.py
#RPM := ./tools/RPM.bin
#RECOVERY := ./tools/combinedroot.fs
#ZIMAGE := ~/github/kernel/evolve-1.8/arch/arm/boot/zImage

rm ./boot.img
python ./tools/mkelf.py -o ./boot.img ~/github/kernel/aosp/arch/arm/boot/zImage@0x40208000 ./tools/ramdisk.img@0x41500000,ramdisk ./tools/RPM.bin@0x20000,rpm
