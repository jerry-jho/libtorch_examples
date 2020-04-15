@echo off

set TEST_ROOT_PATH=%~dp0
set TORCH_INSTALL_PREFIX=C:\SDKs\libtorch\
set cmake_configure=cmake -G "Visual Studio 15 2017 Win64" -Wno-dev -DCMAKE_PREFIX_PATH=%TORCH_INSTALL_PREFIX% -DTEST_ROOT_PATH=%TEST_ROOT_PATH%
set cmake_make=cmake --build . --config Release
path %path%;%TORCH_INSTALL_PREFIX%\lib