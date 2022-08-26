#!/usr/bin/env bash

set -e

export MY_INSTALL=$(pwd)/grib2

# Install [as required]

wget -O libpng-1.6.37.tar.xz https://sourceforge.net/projects/libpng/files/libpng16/1.6.37/libpng-1.6.37.tar.xz/download
tar xf libpng-1.6.37.tar.xz
cd libpng-1.6.37

module load cray-hdf5
module load cray-netcdf
module list

./configure --prefix=${MY_INSTALL}
make -j 4
make install

