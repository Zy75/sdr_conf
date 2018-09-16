#!/bin/sh

sudo dnf install log4cpp log4cpp-devel blas-devel lapack-devel armadillo-devel gflags-devel glog-devel gnutls-devel orc-devel openssl-devel

cd ~

wget https://github.com/google/googletest/archive/release-1.8.0.zip

unzip release-1.8.0.zip

cd googletest-release-1.8.0

cmake -DBUILD_GTEST=ON -DBUILD_GMOCK=OFF .

make -j8

sudo make install
