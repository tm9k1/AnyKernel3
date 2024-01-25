#!/bin/bash

echo "Copying Images here"
cp ${HOME}/samsung/build/arch/arm64/boot/Image ./
cp ${HOME}/samsung/build/arch/arm64/boot/dtbo.img ./

echo "Zip up BoostKernel"
zip -r9 kernel.zip * -x .git *placeholder README.md kernel.zip zip_up_kernel.sh

echo "Deleting Images"
rm Image
rm dtbo.img

echo "done"
