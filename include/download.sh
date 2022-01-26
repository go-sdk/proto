#!/usr/bin/env bash

set -euo pipefail

mkdir -p google/protobuf google/api validate protoc-gen-openapiv2/options

# ------------------------------------------------------------------------------------------------------------------------

# google protobuf
PROTOBUF_VERSION="v3.19.3"
PROTOBUF_URL_PREFIX="https://raw.githubusercontent.com/protocolbuffers/protobuf/${PROTOBUF_VERSION}/src/google/protobuf"
PROTOBUF_FILES="any api descriptor duration empty field_mask source_context struct timestamp type wrappers"

for f in ${PROTOBUF_FILES}; do
  wget -O "google/protobuf/${f}.proto" "${PROTOBUF_URL_PREFIX}/${f}.proto"
done

# google api
GOOGLE_API_VERSION="master"

wget -O google/api/annotations.proto "https://raw.githubusercontent.com/googleapis/googleapis/${GOOGLE_API_VERSION}/google/api/annotations.proto"
wget -O google/api/field_behavior.proto "https://raw.githubusercontent.com/googleapis/googleapis/${GOOGLE_API_VERSION}/google/api/field_behavior.proto"
wget -O google/api/http.proto "https://raw.githubusercontent.com/googleapis/googleapis/${GOOGLE_API_VERSION}/google/api/http.proto"
wget -O google/api/httpbody.proto "https://raw.githubusercontent.com/googleapis/googleapis/${GOOGLE_API_VERSION}/google/api/httpbody.proto"

# validate
VALIDATE_VERSION="v0.6.3"

wget -O validate/validate.proto "https://raw.githubusercontent.com/envoyproxy/protoc-gen-validate/${VALIDATE_VERSION}/validate/validate.proto"

# grpc gateway openapi
GATEWAY_VERSION="v2.7.3"

wget -O protoc-gen-openapiv2/options/annotations.proto "https://raw.githubusercontent.com/grpc-ecosystem/grpc-gateway/${GATEWAY_VERSION}/protoc-gen-openapiv2/options/annotations.proto"
wget -O protoc-gen-openapiv2/options/openapiv2.proto "https://raw.githubusercontent.com/grpc-ecosystem/grpc-gateway/${GATEWAY_VERSION}/protoc-gen-openapiv2/options/openapiv2.proto"
