# libtorch_examples
Some examples of libtorch

## Pre-installations (GPU)

1. Cuda Toolkit 10.1 from https://developer.nvidia.com/cuda-10.1-download-archive-base
2. g++ or Visual Studio 2017 (Windows)
3. Cmake (>Rev3)
4. libtorch https://pytorch.org/ (1.4 - YourOS - libTorch - C++/Java - 10.1)

## Pre-installations (CPU)

1. g++ or Visual Studio (Windows)
2. Cmake (>Rev3)
3. libtorch https://pytorch.org/ (1.4 - YourOS - libTorch - C++/Java - None)

## Edit and run setenv.bat (Windows)

1. Modify Line 4 if your libtorch is unzipped to a place other than C:\SDKs\libtorch
2. Modify Line 5 , option -G if your Visual Studio is not 2017. Do not use a stuff like Visual C++ 6.0.
3. Open a terminal and run setenv.bat

## Build a test (Windows)

1. Create and enter an empty directory.
2. run %cmake_configure% *path-to-a-test* to prepare the Makefiles
3. run %cmake_make% to build.
4. run Release\<project>.exe to run the test. The <project> is normally "main"




