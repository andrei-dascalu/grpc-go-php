#!/bin/bash -e


# Install the gRPC PHP plugin on Mac
#
# See: http://www.grpc.io/docs/quickstart/php.html#install-protobuf-plugin
# Source: https://gist.github.com/johndpope/503029706ed56d5375d1e9469f0135d4

# Install build dependencies
brew install automake libtool

## Clone gRPC repo
git clone --recursive https://github.com/grpc/grpc
cd grpc

cd third_party/protobuf
./autogen.sh
./configure AR=/usr/bin/ar RANLIB=/usr/bin/ranlib
make
make install

cd ../..

./tools/bazel build @com_google_protobuf//:protoc
./tools/bazel build src/compiler:grpc_php_plugin



cp /bazel-bin/src/compiler/grpc_php_plugin /usr/local/bin
