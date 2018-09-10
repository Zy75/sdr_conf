#!/bin/sh

sudo dnf groupinstall "Development Tools"

sudo dnf install hackrf hackrf-devel cmake gcc gcc-c++ boost boost-devel cppunit-devel fftw-devel swig python2-cheetah pygtk2 gsl-devel PyQt4 PyQt4-devel qwt-devel python2-wxpython python2-lxml gmp-devel


pip install --user six mako

git clone https://github.com/gnuradio/gnuradio --recursive

cd gnuradio
mkdir build
cd build

cmake ..

make -j4
