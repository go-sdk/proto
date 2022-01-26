#!/usr/bin/env bash

set -euo pipefail

TZ="Asia/Shanghai"
VERSION="v0.0.0-dev"
BUILT=$(date +%FT%T%z)

cat >pb/version.go <<EOF
package pb

var (
	VERSION = "${VERSION}"
	BUILT   = "${BUILT}"
)

func VersionInfoMap() map[string]interface{} {
	return map[string]interface{}{
		"version": VERSION,
		"built":   BUILT,
	}
}
EOF
