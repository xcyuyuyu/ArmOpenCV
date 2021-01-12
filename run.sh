export ANDROID_NDK=/yourNDKPath # NDK的目录

rm -r build
mkdir build
cd build

# 执行交叉编译
cmake -DCMAKE_TOOLCHAIN_FILE=$ANDROID_NDK/build/cmake/android.toolchain.cmake \
	-DANDROID_ABI="arm64-v8a" \
	-DANDROID_NDK=$ANDROID_NDK \
	-DANDROID_PLATFORM=android-21 \
	..

make -j8



