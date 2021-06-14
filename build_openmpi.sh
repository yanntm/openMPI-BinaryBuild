#! /bin/bash

set -x

# tar zxf louvain-generic.tar.gz

wget https://download.open-mpi.org/release/open-mpi/v4.1/openmpi-4.1.1.tar.gz

tar zxf openmpi-4.1.1.tar.gz

cd openmpi-4.1.1

./configure --enable-mpi-java --prefix=$PWD/usr/local/

make -j

make install

ls -R usr/

mv usr/ website/
