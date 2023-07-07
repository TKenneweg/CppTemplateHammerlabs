#!/bin/bash
echo -n "(Re)build (y/n) "
read answer
if [ "$answer" == "${answer#[Yy]}" ] ;then
    echo "Aborting."
    exit
fi

libname=$1
cd $libname
mkdir build
mkdir install
cd build
rm CMakeCache.txt
cmake -D CMAKE_C_COMPILER=$(which gcc) \
      -D CMAKE_CXX_COMPILER=$(which g++) \
      -D CMAKE_INSTALL_PREFIX=../install ..
make install -j8

echo "Install script done."