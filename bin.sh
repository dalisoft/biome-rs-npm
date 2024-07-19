#!/bin/sh
set -eu

CURRENT_DIR=$(dirname "$0")

BINARY_NAME='biome'
BINARY_NAME_SCOPE='@biomejs/cli-'

# Search and find binary
BIOME_BIN=$(find . -iname "${BINARY_NAME}" | grep -s "${BINARY_NAME_SCOPE}")
BIOME_BIN=$(realpath -q "${BIOME_BIN}")

# Make it executable
if test -f "${BIOME_BIN}"; then
  chmod +x "${BIOME_BIN}"
fi

# Replace binary in `bin` field for later use
if test -f "${CURRENT_DIR}/package.json"; then
  sed -i.bak "s|bin.sh|${BIOME_BIN}|g" "${CURRENT_DIR}/package.json"
  rm -rf "package.json.bak"
fi

# Run currently until next run
"${BIOME_BIN}"
