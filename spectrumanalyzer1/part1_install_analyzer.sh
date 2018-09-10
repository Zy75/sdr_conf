#!/bin/sh

sudo dnf groupinstall "Development Tools"

sudo dnf install fftw-devel libusb-devel java-1.8.0-openjdk make automake gcc gcc-c++ ant

cd ~

git clone --depth=1 --recurse-submodules https://github.com/pavsa/hackrf-spectrum-analyzer.git

cd ~/hackrf-spectrum-analyzer/src/hackrf-sweep/

make -j4
