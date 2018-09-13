#!/bin/sh

sudo dnf install libbtbb-devel

cd ~

git clone https://github.com/greatscottgadgets/gr-bluetooth

cd gr-bluetooth

mkdir build
cd build

cmake ..

make 

echo "MAKE FINISHED. OK?"
read

sudo make install
