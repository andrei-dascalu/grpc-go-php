#!/bin/bash -e


cd grpc
git submodule update --init

cd third_party/protobuf
./autogen.sh
./configure AR=/usr/bin/ar RANLIB=/usr/bin/ranlib
make
make install

cd ../..

./tools/bazel build @com_google_protobuf//:protoc
./tools/bazel build src/compiler:grpc_php_plugin

cp /bazel-bin/src/compiler/grpc_php_plugin /usr/local/bin
