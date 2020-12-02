#!/bin/bash

set -e

sudo apt install -y libpci3 libpci-dev doxygen unzip cmake git libpciaccess-dev
sudo ln -f -s /usr/bin/python3 /usr/bin/python

mkdir -p $ROCM_BUILD_DIR/rocmvalidationsuite
cd $ROCM_BUILD_DIR/rocmvalidationsuite
pushd .

START_TIME=`date +%s`

cmake \
    -DCMAKE_BUILD_TYPE=Release \
    -DCPACK_PACKAGING_INSTALL_PREFIX=$ROCM_INSTALL_DIR \
    -DCMAKE_INSTALL_PREFIX=rocmvalidationsuite-install \
    -G Ninja \
    $ROCM_GIT_DIR/ROCmValidationSuite
ninja
ninja package
sudo dpkg -i *.deb

END_TIME=`date +%s`
EXECUTING_TIME=`expr $END_TIME - $START_TIME`
echo "elapse : "$EXECUTING_TIME"s"

popd

