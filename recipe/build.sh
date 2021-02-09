#!/bin/bash
tar Jxvf ${PKG_NAME}-${PKG_VERSION//./-}.txz
cd ${PKG_NAME}-${PKG_VERSION//./-}
patch -u -p1 -i ${RECIPE_DIR}/cmake.patch
cmake . -DKIM_API_MODEL_DRIVER_INSTALL_PREFIX=${PREFIX}/lib/openkim-models/model-drivers -DKIM_API_PORTABLE_MODEL_INSTALL_PREFIX=${PREFIX}/lib/openkim-models/portable-models -DKIM_API_SIMULATOR_MODEL_INSTALL_PREFIX=${PREFIX}/lib/openkim-models/simulator-models
make install
