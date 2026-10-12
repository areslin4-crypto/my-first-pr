#!/usr/bin/env sh
# 在每個 Claude Code 雲端 session 啟動時執行,把溝通準則裝成使用者層級的 CLAUDE.md,
# 讓任何 repo、任何新工作都套用同一套準則。
# 用法:把下面這一行貼進 Claude Code 環境設定的 Setup script:
#   curl -fsSL https://raw.githubusercontent.com/areslin4-crypto/my-first-pr/main/scripts/setup-guidelines.sh | sh
set -eu
SRC="https://raw.githubusercontent.com/areslin4-crypto/my-first-pr/main/CLAUDE.md"
DEST="${HOME}/.claude/CLAUDE.md"
mkdir -p "$(dirname "$DEST")"
curl -fsSL "$SRC" -o "$DEST.tmp"
mv "$DEST.tmp" "$DEST"
echo "guidelines installed to $DEST ($(wc -l < "$DEST") lines)"
