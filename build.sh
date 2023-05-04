#!/bin/bash

set -x

SOURCE_DIR=`pwd`
BUILD_DIR=${BUILD_DIR:-./build}
BIN_DIR=${BIN_DIR:-/home/wings/gitfiles/tinyrpc_l/tinyrpc_1/output/usr/bin}
LIB_DIR=${LIB_DIR:-/home/wings/gitfiles/tinyrpc_l/tinyrpc_1/output/usr/lib}

# PATH_INSTALL_INC_ROOT=${PATH_INSTALL_INC_ROOT:-./output/usr/include}
# PATH_INSTALL_LIB_ROOT=${PATH_INSTALL_LIB_ROOT:-./output/usr/lib}
# INCLUDE_DIR=${INCLUDE_DIR:-./output/build/include}
# LIB=${LIB:-./lib/libtinyrpc.a}

# mkdir -p ${INCLUDE_DIR} \
#     && cd ${BUILD_DIR} \
    cd ${BUILD_DIR} \
    && cmake .. -DPATH_LIB=${LIB_DIR} -DPATH_BIN=${BIN_DIR} -DCMAKE_INSTALL_PREFIX=/home/wings/gitfiles/tinyrpc_l/tinyrpc_1/ \
    && make install \
    # && cd .. \
    # && cp -r ${INCLUDE_DIR}/tinyrpc ${PATH_INSTALL_INC_ROOT} \
    # && cp ${LIB} ${PATH_INSTALL_LIB_ROOT} \
    # && rm -rf ${INCLUDE_DIR}

