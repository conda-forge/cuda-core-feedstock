#!/bin/bash

export CUDA_PATH="${PREFIX}${SUBDIR}"

DIR_NAME="$(echo $PKG_NAME | tr '-' '_')"
cd $DIR_NAME
$PYTHON -m pip install . --no-deps -vv
