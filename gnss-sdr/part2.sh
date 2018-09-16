#!/bin/sh

echo "export GTEST_DIR=~/googletest-release-1.8.0/googletest" >> ~/.bashrc

source ~/.bashrc

cd ~

git clone https://github.com/gnss-sdr/gnss-sdr

cd gnss-sdr/build

cmake -DENABLE_OSMOSDR=ON ..

echo "cmake finished OK?"
read

make -j8

echo "make finished OK?"
read

sudo make install

sudo ldconfig
