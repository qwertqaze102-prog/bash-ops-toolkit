#!/usr/bin/env bash
set -euo pipefail
SERVICE="${1:-}"
if [[ -z "$SERVICE" ]]; then
  echo "Usage: $0 <service-name>" >&2
  exit 1
fi
if systemctl is-active --quiet "$SERVICE"; then
  echo "OK: $SERVICE is active"
  exit 0
fi
echo "WARN: $SERVICE is not active, restarting..."
systemctl restart "$SERVICE"
sleep 2
if systemctl is-active --quiet "$SERVICE"; then
  echo "RECOVERED: $SERVICE is active again"
  exit 0
fi
echo "FAIL: could not recover $SERVICE" >&2
exit 2
