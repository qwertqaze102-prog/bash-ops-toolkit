#!/usr/bin/env bash
set -euo pipefail
LOGDIR="${1:-/var/log/myapp}"
KEEP_DAYS="${2:-14}"
find "$LOGDIR" -type f -name '*.log' -mtime +"$KEEP_DAYS" -print -delete
find "$LOGDIR" -type f -name '*.log' -size +100M -exec gzip -f {} \;
echo "Log rotation done for $LOGDIR (keep ${KEEP_DAYS}d)"
