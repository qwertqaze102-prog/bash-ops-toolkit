#!/usr/bin/env bash
set -euo pipefail
SRC="${1:-}"
DST="${2:-}"
if [[ -z "$SRC" || -z "$DST" ]]; then
  echo "Usage: $0 <source-dir> <backup-dir>" >&2
  exit 1
fi
mkdir -p "$DST"
STAMP=$(date +%Y%m%d_%H%M%S)
NAME=$(basename "$SRC")
ARCHIVE="$DST/${NAME}_${STAMP}.tar.gz"
tar -czf "$ARCHIVE" -C "$(dirname "$SRC")" "$NAME"
echo "Backup created: $ARCHIVE"
ls -lh "$ARCHIVE"
