#!/bin/bash
echo "Setting Up Environment"
echo ""
export CROSS_COMPILE=/home/martinvalentine/kernel/gcc1/bin/aarch64-linux-gnu-
export ARCH=arm64
export ANDROID_MAJOR_VERSION=q
export PLATFORM_VERSION=10
export USE_CCACHE=1
CPU=`nproc --all`
clear
echo "Select"
echo "1 = Exit"
echo "2 = Clean build"
echo "3 = A320X"
echo "4 = J7velte"
echo "5 = A6"
echo "6 = J5" 
echo "7 = J6"
echo "8 = J7xelte"
echo "9 = J7y17lte"
echo "10 = on7xelte"
echo "11 = All devices"
read n
clear  

if [ $n -eq 1 ]; then
exit
elif [ $n -eq 2 ]; then

make clean && make mrproper
rm -r /home/martinvalentine/kernel/Pruh_Kernel/arch/arm64/boot/Image
rm -r /home/martinvalentine/kernel/Pruh_Kernel/arch/arm64/boot/dtb.img
elif [ $n -eq 3 ]; then

echo "============="
echo "Building zImage For A320X"
echo "============="
make exynos7870-a3y17lte_defconfig
make -j"$CPU"
echo "Kernel Compiled for A3lte"
mv /home/martinvalentine/kernel/Pruh_Kernel/arch/arm64/boot/Image /home/martinvalentine/kernel/Pruh_Kernel/build_folder/split_img/boot.img-zImage
mv /home/martinvalentine/kernel/Pruh_Kernel/arch/arm64/boot/dtb.img /home/martinvalentine/kernel/Pruh_Kernel/build_folder/split_img/boot.img-dt
echo martins | sudo -S /home/martinvalentine/kernel/Pruh_Kernel/build_folder/repackimg.sh
mv /home/martinvalentine/kernel/Pruh_Kernel/build_folder/image-new.img /home/martinvalentine/kernel/Pruh_Kernel/build_folder/output/Pruh-Kernel-A3.img
echo "Cleaning Please wait....."
make clean
times
echo "Done"
echo "Flashable image is at output folder"

elif [ $n -eq 4 ]; then

make exynos7870-j7velte_defconfig
make -j"$CPU"
echo "Kernel Compiled for J7velte"
mv /home/martinvalentine/kernel/Pruh_Kernel/arch/arm64/boot/Image /home/martinvalentine/kernel/Pruh_Kernel/build_folder/split_img/boot.img-zImage
mv /home/martinvalentine/kernel/Pruh_Kernel/arch/arm64/boot/dtb.img /home/martinvalentine/kernel/Pruh_Kernel/build_folder/split_img/boot.img-dt
echo martins | sudo -S /home/martinvalentine/kernel/Pruh_Kernel/build_folder/repackimg.sh
mv /home/martinvalentine/kernel/Pruh_Kernel/build_folder/image-new.img /home/martinvalentine/kernel/Pruh_Kernel/build_folder/output/Pruh-Kernel_j7ve.img
echo "Cleaning Please wait....."
make clean
echo "Done"
echo "Flashable image is at output folder"
elif [ $n -eq 5 ]; then
echo "device doesn't exist lmao"
elif [ $n -eq 6 ]; then

make exynos7870-j5y17lte_defconfig
make -j"$CPU"
echo "Kernel Compiled for J5"
mv /home/martinvalentine/kernel/Pruh_Kernel/arch/arm64/boot/Image /home/martinvalentine/kernel/Pruh_Kernel/build_folder/split_img/boot.img-zImage
mv /home/martinvalentine/kernel/Pruh_Kernel/arch/arm64/boot/dtb.img /home/martinvalentine/kernel/Pruh_Kernel/build_folder/split_img/boot.img-dt
echo martins | sudo -S /home/martinvalentine/kernel/Pruh_Kernel/build_folder/repackimg.sh
mv /home/martinvalentine/kernel/Pruh_Kernel/build_folder/image-new.img /home/martinvalentine/kernel/Pruh_Kernel/build_folder/output/Pruh-Kernel_j5y17lte.img
echo "Cleaning Please wait....."
make clean
echo "Done"
echo "Flashable image is at output folder"
times
elif [ $n -eq 7 ]; then

make exynos7870-j6lte_defconfig
make -j"$CPU"
echo "Kernel Compiled for J6lte"
mv /home/martinvalentine/kernel/Pruh_Kernel/arch/arm64/boot/Image /home/martinvalentine/kernel/Pruh_Kernel/build_folder/split_img/boot.img-zImage
mv /home/martinvalentine/kernel/Pruh_Kernel/arch/arm64/boot/dtb.img /home/martinvalentine/kernel/Pruh_Kernel/build_folder/split_img/boot.img-dt
echo martins | sudo -S /home/martinvalentine/kernel/Pruh_Kernel/build_folder/repackimg.sh
mv /home/martinvalentine/kernel/Pruh_Kernel/build_folder/image-new.img /home/martinvalentine/kernel/Pruh_Kernel/build_folder/output/Pruh-Kernel_j6lte.img
echo "Cleaning Please wait....."
make clean
echo "Done"
echo "Flashable image is at output folder"
times
elif [ $n -eq 8 ]; then

make exynos7870-j7xelte_defconfig
make -j"$CPU"
echo "Kernel Compiled for J7xelte"
mv /home/martinvalentine/kernel/Pruh_Kernel/arch/arm64/boot/Image /home/martinvalentine/kernel/Pruh_Kernel/build_folder/split_img/boot.img-zImage
mv /home/martinvalentine/kernel/Pruh_Kernel/arch/arm64/boot/dtb.img /home/martinvalentine/kernel/Pruh_Kernel/build_folder/split_img/boot.img-dt
echo martins | sudo -S /home/martinvalentine/kernel/Pruh_Kernel/build_folder/repackimg.sh
mv /home/martinvalentine/kernel/Pruh_Kernel/build_folder/image-new.img /home/martinvalentine/kernel/Pruh_Kernel/build_folder/output/Pruh-Kernel_j7xelte.img
echo "Cleaning Please wait....."
make clean
echo "Done"
echo "Flashable image is at output folder"
times
elif [ $n -eq 9 ]; then

make exynos7870-j7y17lte_defconfig
make -j"$CPU"
echo "Kernel Compiled for J7y17lte"
mv /home/martinvalentine/kernel/Pruh_Kernel/arch/arm64/boot/Image /home/martinvalentine/kernel/Pruh_Kernel/build_folder/split_img/boot.img-zImage
mv /home/martinvalentine/kernel/Pruh_Kernel/arch/arm64/boot/dtb.img /home/martinvalentine/kernel/Pruh_Kernel/build_folder/split_img/boot.img-dt
echo martins | sudo -S /home/martinvalentine/kernel/Pruh_Kernel/build_folder/repackimg.sh
mv /home/martinvalentine/kernel/Pruh_Kernel/build_folder/image-new.img /home/martinvalentine/kernel/Pruh_Kernel/build_folder/output/Pruh-Kernel_j7y17lte.img
echo "Cleaning Please wait....."
make clean
echo "Done"
echo "Flashable image is at output folder"
times
elif [ $n -eq 10 ]; then

make exynos7870-on7xelte_defconfig
make -j"$CPU"
echo "Kernel Compiled for on7xelte"
mv /home/martinvalentine/kernel/Pruh_Kernel/arch/arm64/boot/Image /home/martinvalentine/kernel/Pruh_Kernel/build_folder/split_img/boot.img-zImage
mv /home/martinvalentine/kernel/Pruh_Kernel/arch/arm64/boot/dtb.img /home/martinvalentine/kernel/Pruh_Kernel/build_folder/split_img/boot.img-dt
echo martins | sudo -S /home/martinvalentine/kernel/Pruh_Kernel/build_folder/repackimg.sh
mv /home/martinvalentine/kernel/Pruh_Kernel/build_folder/image-new.img /home/martinvalentine/kernel/Pruh_Kernel/build_folder/output/Pruh-Kernel_on7xelte.img
echo "Cleaning Please wait....."
make clean
echo "Done"
echo "Flashable image is at output folder"
times
elif [ $n -eq 11 ]; then
echo "============="
echo "Building zImage For A320X"
echo "============="
make exynos7870-a3y17lte_defconfig
make -j"$CPU"
echo "Kernel Compiled for A3lte"
mv /home/martinvalentine/kernel/Pruh_Kernel/arch/arm64/boot/Image /home/martinvalentine/kernel/Pruh_Kernel/build_folder/split_img/boot.img-zImage
mv /home/martinvalentine/kernel/Pruh_Kernel/arch/arm64/boot/dtb.img /home/martinvalentine/kernel/Pruh_Kernel/build_folder/split_img/boot.img-dt
echo martins | sudo -S /home/martinvalentine/kernel/Pruh_Kernel/build_folder/repackimg.sh
mv /home/martinvalentine/kernel/Pruh_Kernel/build_folder/image-new.img /home/martinvalentine/kernel/Pruh_Kernel/build_folder/output/Pruh-Kernel_a3y17lte.img
echo "Cleaning Please wait....."
make clean
echo "Done"
echo "Flashable image is at output folder"

make exynos7870-j7velte_defconfig
make -j"$CPU"
echo "Kernel Compiled for J7velte"
mv /home/martinvalentine/kernel/Pruh_Kernel/arch/arm64/boot/Image /home/martinvalentine/kernel/Pruh_Kernel/build_folder/split_img/boot.img-zImage
mv /home/martinvalentine/kernel/Pruh_Kernel/arch/arm64/boot/dtb.img /home/martinvalentine/kernel/Pruh_Kernel/build_folder/split_img/boot.img-dt
echo martins | sudo -S /home/martinvalentine/kernel/Pruh_Kernel/build_folder/repackimg.sh
mv /home/martinvalentine/kernel/Pruh_Kernel/build_folder/image-new.img /home/martinvalentine/kernel/Pruh_Kernel/build_folder/output/Pruh-Kernel_j7velte.img
echo "Cleaning Please wait....."
make clean
echo "Done"
echo "Flashable image is at output folder"

make exynos7870-j5y17lte_defconfig
make -j"$CPU"
echo "Kernel Compiled for J5"
mv /home/martinvalentine/kernel/Pruh_Kernel/arch/arm64/boot/Image /home/martinvalentine/kernel/Pruh_Kernel/build_folder/split_img/boot.img-zImage
mv /home/martinvalentine/kernel/Pruh_Kernel/arch/arm64/boot/dtb.img /home/martinvalentine/kernel/Pruh_Kernel/build_folder/split_img/boot.img-dt
echo martins | sudo -S /home/martinvalentine/kernel/Pruh_Kernel/build_folder/repackimg.sh
mv /home/martinvalentine/kernel/Pruh_Kernel/build_folder/image-new.img /home/martinvalentine/kernel/Pruh_Kernel/build_folder/output/Pruh-Kernel_j5y17lte.img
echo "Cleaning Please wait....."
make clean
echo "Done"
echo "Flashable image is at output folder"

make exynos7870-j6lte_defconfig
make -j"$CPU"
echo "Kernel Compiled for J6lte"
mv /home/martinvalentine/kernel/Pruh_Kernel/arch/arm64/boot/Image /home/martinvalentine/kernel/Pruh_Kernel/build_folder/split_img/boot.img-zImage
mv /home/martinvalentine/kernel/Pruh_Kernel/arch/arm64/boot/dtb.img /home/martinvalentine/kernel/Pruh_Kernel/build_folder/split_img/boot.img-dt
echo martins | sudo -S /home/martinvalentine/kernel/Pruh_Kernel/build_folder/repackimg.sh
mv /home/martinvalentine/kernel/Pruh_Kernel/build_folder/image-new.img /home/martinvalentine/kernel/Pruh_Kernel/build_folder/output/Pruh-Kernel_j6lte.img
echo "Cleaning Please wait....."
make clean
echo "Done"
echo "Flashable image is at output folder"

make exynos7870-j7xelte_defconfig
make -j"$CPU"
echo "Kernel Compiled for J7xelte"
mv /home/martinvalentine/kernel/Pruh_Kernel/arch/arm64/boot/Image /home/martinvalentine/kernel/Pruh_Kernel/build_folder/split_img/boot.img-zImage
mv /home/martinvalentine/kernel/Pruh_Kernel/arch/arm64/boot/dtb.img /home/martinvalentine/kernel/Pruh_Kernel/build_folder/split_img/boot.img-dt
echo martins | sudo -S /home/martinvalentine/kernel/Pruh_Kernel/build_folder/repackimg.sh
mv /home/martinvalentine/kernel/Pruh_Kernel/build_folder/image-new.img /home/martinvalentine/kernel/Pruh_Kernel/build_folder/output/Pruh-Kernel_j7xelte.img
echo "Cleaning Please wait....."
make clean
echo "Done"
echo "Flashable image is at output folder"

make exynos7870-j7y17lte_defconfig
make -j"$CPU"
echo "Kernel Compiled for J7y17lte"
mv /home/martinvalentine/kernel/Pruh_Kernel/arch/arm64/boot/Image /home/martinvalentine/kernel/Pruh_Kernel/build_folder/split_img/boot.img-zImage
mv /home/martinvalentine/kernel/Pruh_Kernel/arch/arm64/boot/dtb.img /home/martinvalentine/kernel/Pruh_Kernel/build_folder/split_img/boot.img-dt
echo martins | sudo -S /home/martinvalentine/kernel/Pruh_Kernel/build_folder/repackimg.sh
mv /home/martinvalentine/kernel/Pruh_Kernel/build_folder/image-new.img /home/martinvalentine/kernel/Pruh_Kernel/build_folder/output/Pruh-Kernel_j7y17lte.img
echo "Cleaning Please wait....."
make clean
echo "Done"
echo "Flashable image is at output folder"

make exynos7870-on7xelte_defconfig
make -j"$CPU"
echo "Kernel Compiled for on7xelte"
mv /home/martinvalentine/kernel/Pruh_Kernel/arch/arm64/boot/Image /home/martinvalentine/kernel/Pruh_Kernel/build_folder/split_img/boot.img-zImage
mv /home/martinvalentine/kernel/Pruh_Kernel/arch/arm64/boot/dtb.img /home/martinvalentine/kernel/Pruh_Kernel/build_folder/split_img/boot.img-dt
echo martins | sudo -S /home/martinvalentine/kernel/Pruh_Kernel/build_folder/repackimg.sh
mv /home/martinvalentine/kernel/Pruh_Kernel/build_folder/image-new.img /home/martinvalentine/kernel/Pruh_Kernel/build_folder/output/Pruh-Kernel_on7xelte.img
echo "Cleaning Please wait....."
make clean
echo "Done"
echo "Flashable image is at output folder"
times
fi

