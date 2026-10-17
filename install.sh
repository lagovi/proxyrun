#!/usr/bin/env bash
set -e

BIN_DIR="$HOME/.local/bin"
TARGET="$BIN_DIR/proxyrun"
SRC="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/bin/proxyrun"

mkdir -p "$BIN_DIR"

ln -sf "$SRC" "$TARGET"
chmod +x "$SRC"

echo "✓ ProxyRun установлен в $TARGET (симлинк на $SRC)"
