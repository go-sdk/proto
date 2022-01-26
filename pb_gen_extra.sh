#!/usr/bin/env bash

set -euo pipefail

VERSION="v0.0.1"
TZ="Asia/Shanghai"
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
