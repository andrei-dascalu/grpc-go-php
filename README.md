# EMS Protocol Buffers #

Collection of protobuf definitions for EMS services


## Generate Code ##

* PHP: `protoc --proto_path=fish-proxy --php_out=build fish-proxy/fish-api.proto`
* Go: `protoc --proto_path=fish-proxy --go_out=build fish-proxy/fish-api.proto`



## Requirements ##

* Protobuf / protoc
* Go: `go install google.golang.org/protobuf/cmd/protoc-gen-go@latest`
