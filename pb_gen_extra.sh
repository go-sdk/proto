#!/usr/bin/env bash

set -euo pipefail

VERSION=$(git describe --exact-match --tags HEAD 2>/dev/null || echo "latest")
GITHASH=$(git rev-parse --short HEAD)
BUILT=$(date +%FT%T%z)

cp -r dist/* pb/

pushd pb >/dev/null

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

popd >/dev/null
