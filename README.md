# EMS Protocol Buffers #

Collection of protobuf definitions for EMS services


## PHP ##

* deps: `pecl install grpc`
* deps: `composer require grpc/grpc`

* PHP: `protoc --proto_path=fish-proxy --php_out=build fish-proxy/fish-api.proto`

```bash
protoc \
  --proto_path=fish-proxy \
  --php_out=build/php \
  --grpc_out=build/php \
  --plugin=protoc-gen-grpc=`which grpc_php_plugin` \
  ./fish-proxy/fish-api.proto
```



## Golang ##
* deps `go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest`
* Go: `protoc --proto_path=fish-proxy --go_out=build fish-proxy/fish-api.proto`

```bash
protoc \
  --proto_path=fish-proxy \
  --go_out=build/go \
  --go_opt=paths=source_relative \
  --go-grpc_out=build/go \
  --go-grpc_opt=paths=source_relative \
    ./fish-proxy/fish-api.proto
```


## Requirements ##

* Protobuf / protoc
* Go: `go install google.golang.org/protobuf/cmd/protoc-gen-go@latest`
