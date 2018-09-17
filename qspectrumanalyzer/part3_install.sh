#!/bin/sh

# install qspectrumanalyzer
cd ~

git clone https://github.com/xmikos/qspectrumanalyzer

cd qspectrumanalyzer

pip3 install --user .

# Library PATH
echo "export LD_LIBRARY_PATH=/usr/local/lib64" >> ~/.bashrc

# install pyFFTW
sudo dnf install fftw-devel python3-Cython

cd ~

git clone https://github.com/pyFFTW/pyFFTW

cd pyFFTW

pip3 install --user .

source ~/.bashrc

