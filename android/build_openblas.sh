#!/bin/bash

set -e
set -x

cd ~/code/github/OpenBLAS
rm -rf build-android
mkdir build-android
cd build-android

ANDROID_NDK=~/code/android-ndk-r18b

cmake \
    -DCMAKE_TOOLCHAIN_FILE=$ANDROID_NDK/build/cmake/android.toolchain.cmake \
    -DANDROID_ARM_MODE=arm \
    -DANDROID_ARM_NEON=ON \
    -DANDROID_ABI=arm64-v8a \
    -DANDROID_NATIVE_API_LEVEL=23 \
    -DCMAKE_EXE_LINKER_FLAGS="-fuse-ld=lld" \
    -DANDROID_STL=c++_shared \
    -DTARGET=CORTEXA57 \
    -DONLY_CBLAS=1 \
    -DDYNAMIC_ARCH=0 \
    -DBUILD_WITHOUT_LAPACK=ON \
    -DBUILD_RELAPACK=OFF \
    -DCMAKE_INSTALL_PREFIX=./install \
    ..

make -j4
