#!/bin/bash

echo "Copying Kernel Image here"
cp home/mrsiri/android_kernel_samsung_m23xq/out/arch/arm64/boot/Image ./
cp home/mrsiri/android_kernel_samsung_m23xq/out/arch/arm64/boot/dtbo.img ./
cp home/mrsiri/android_kernel_samsung_m23xq/out/arch/arm64/boot/dts/vendor/qcom/lagoon.dtb ./
mv lagoon.dtb dtb

echo "Zip up Kernel"
zip -r9 Boostkernel.zip * -x .git *placeholder README.md kernel.zip zip_up_kernel.sh

echo "deleting kernel image"
rm Image
rm dtbo.img
rm dtb

echo "done"
