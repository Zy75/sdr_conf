#!/bin/sh

cd ~

git clone https://github.com/osmocom/gr-osmosdr

cd gr-osmosdr
mkdir build
cd build

cmake ..

echo "CMAKE END OK?"
read

make -j4

echo "MAKE FINISHED OK?"
read

sudo make install

source ~/.bashrc
