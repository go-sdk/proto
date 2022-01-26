#!/usr/bin/env bash

set -euo pipefail

VERSION=$(git describe --exact-match --tags HEAD 2>/dev/null || echo "latest")
GITHASH=$(git rev-parse --short HEAD)
BUILT=$(date +%FT%T%z)

cd pb || exit 1

cat >go.mod <<EOF
module github.com/go-sdk/pb

go 1.17

require (
	github.com/envoyproxy/protoc-gen-validate v0.6.3
	github.com/grpc-ecosystem/grpc-gateway/v2 v2.7.3
	google.golang.org/genproto v0.0.0-20220118154757-00ab72f36ad5
	google.golang.org/grpc v1.44.0
	google.golang.org/protobuf v1.27.1
)
EOF

go mod tidy

cat >version.go <<EOF
package pb

var (
	VERSION = "${VERSION}"
	GITHASH = "${GITHASH}"
	BUILT   = "${BUILT}"
)

func VersionInfoMap() map[string]interface{} {
	return map[string]interface{}{
		"version": VERSION + "-" + GITHASH,
		"built":   BUILT,
	}
}
EOF
