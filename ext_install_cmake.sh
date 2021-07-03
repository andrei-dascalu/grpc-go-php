#!/bin/bash -e

cd grpc
git submodule update --init
mkdir -p cmake/build
cd cmake/build
cmake ../..
make protoc grpc_php_plugin
make clean
