#!/bin/bash -e


# Install the gRPC PHP plugin on Mac
#
# See: http://www.grpc.io/docs/quickstart/php.html#install-protobuf-plugin
# Source: https://gist.github.com/johndpope/503029706ed56d5375d1e9469f0135d4

# Install build dependencies
brew install automake libtool cmake zlib

## Clone gRPC repo
git clone --recursive https://github.com/grpc/grpc

