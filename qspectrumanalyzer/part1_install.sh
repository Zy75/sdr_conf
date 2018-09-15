#!/bin/sh

sudo dnf install hackrf hackrf-devel

sudo dnf install PyQt4-devel python3-devel python3-pyqtgraph cmake swig


# install Qt.py
pip3 install --user Qt.py

# install SoapySDR
cd ~

git clone https://github.com/pothosware/SoapySDR

cd SoapySDR

mkdir build
cd build

cmake ..

make -j4

sudo make install
