cmake_minimum_required(VERSION 3.17)
project(ArmNenoOptim)
message(STATUS "root This is BINARY dir " ${PROJECT_BINARY_DIR})
message(STATUS "root This is SOURCE dir " ${PROJECT_SOURCE_DIR})

set(CMAKE_CXX_STANDARD 11)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

# 这里是你交叉编译好的Opencv目录
set(OpenCVHome /yourBuildOpencvPath/sdk/native)

include_directories(${OpenCVHome}/jni/include)
include_directories(${OpenCVHome}/jni/include/opencv)
include_directories(${OpenCVHome}/jni/include/opencv2)

link_directories(${OpenCVHome}/libs/arm64-v8a
        ${OpenCVHome}/3rdparty/libs/arm64-v8a)

link_libraries(
        opencv_androidcamera
        opencv_calib3d
        opencv_contrib
        opencv_core
        opencv_features2d
        opencv_flann
        opencv_gpu
        opencv_highgui
        opencv_imgproc
        opencv_legacy
        opencv_ml
        opencv_nonfree
        opencv_objdetect
        opencv_ocl
        opencv_photo
        opencv_stitching
        opencv_superres
        opencv_ts
        opencv_video
        opencv_videostab
        IlmImf
        libjasper
        libpng
        libjpeg
        libtiff
        log
        z
)

add_executable(ArmOpenCV ./src/main.cpp)