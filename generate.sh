#!/bin/bash

mkdir -p proto_gen_export/go;
protoc --proto_path=$(pwd)/protos/protos --go_out=plugins=grpc:$(pwd)/proto_gen_export/go $(pwd)/protos/protos/*.proto && \
cd proto_gen_export && git config user.email "" && git config user.name "GitHub Action" && git add . && git commit -m "Auto Update" && git push