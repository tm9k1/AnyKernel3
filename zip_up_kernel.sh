#!/bin/bash

echo "Copying Kernel Image here"
cp ${HOME}/android_kernel_samsung_m23xq_common/out/arch/arm64/boot/Image ./

echo "Zip up BoostKernel"
zip -r9 kernel.zip * -x .git *placeholder README.md kernel.zip zip_up_kernel.sh

echo "Deleting Kernel Image"
rm Image

echo "done"
