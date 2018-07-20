#!/bin/bash

##
## Copyright (c) 2017-18, Lawrence Livermore National Security, LLC.
##
## Produced at the Lawrence Livermore National Laboratory.
##
## LLNL-CODE-738930
##
## All rights reserved.
## 
## This file is part of the RAJA Performance Suite.
##
## For details about use and distribution, please read raja-perfsuite/LICENSE.
##

rm -rf build_lc_toss3-icpc-17.0.2 2>/dev/null
mkdir build_lc_toss3-icpc-17.0.2 && cd build_lc_toss3-icpc-17.0.2

module load cmake/3.9.2
module load gcc/7.1.0

RAJA_DIR=$(git rev-parse --show-toplevel)

cmake \
  -DCMAKE_BUILD_TYPE=Release \
  -C ${RAJA_DIR}/host-configs/lc-builds/toss3/icpc_17_0_2.cmake \
  -DENABLE_OPENMP=On \
  -DCMAKE_INSTALL_PREFIX=${RAJA_DIR}/install_lc_toss3-icpc-17.0.2 \
  "$@" \
  ${RAJA_DIR}
