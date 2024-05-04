#!/bin/bash
rm -rf webassembly-build && \
mkdir -p webassembly-build && \
cd webassembly-build && \
source "$EMSDK/emsdk_env.sh" && \
emcmake cmake -DCMAKE_BUILD_TYPE=Debug .. && \
cmake --build . --config Debug --parallel $(nproc --all) && \
python -m http.server 8080