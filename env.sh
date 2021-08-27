#!/bin/bash


ROOT=$(pwd)
export CMAKE_DIR=${ROOT}/local/cmake-3.16.8-Linux-x86_64
export ROCM_INSTALL_DIR=${ROOT}/output/opt/rocm
export ROCM_GIT_DIR=${ROOT}/../ROCm
export ROCM_BUILD_DIR=${ROOT}/build
export ROCM_PATCH_DIR=${ROOT}/patch
export AMDGPU_TARGETS="gfx803"
export PATH=$ROCM_INSTALL_DIR/bin:$ROCM_INSTALL_DIR/llvm/bin:$ROCM_INSTALL_DIR/hip/bin:$CMAKE_DIR/bin:$PATH

