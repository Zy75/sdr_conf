#!/bin/sh

# install simplesoapy
cd ~

git clone https://github.com/xmikos/simplesoapy

cd simplesoapy

pip3 install --user .

# install simplespectral
cd ~

git clone https://github.com/xmikos/simplespectral

cd simplespectral

pip3 install --user .

# install soapy_power
cd ~

git clone https://github.com/xmikos/soapy_power

cd soapy_power

pip3 install --user .

# install SoapyHackRF
cd ~

git clone https://github.com/pothosware/SoapyHackRF

cd SoapyHackRF

mkdir build
cd build

cmake ..

make -j4

sudo make install
