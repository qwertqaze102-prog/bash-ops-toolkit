#!/usr/bin/env bash
set -euo pipefail
echo "=== Host health report: $(hostname) ==="
date
echo
echo "-- Uptime --"; uptime || true
echo
echo "-- Disk --"; df -hT | head -n 20 || true
echo
echo "-- Memory --"; free -h 2>/dev/null || vm_stat 2>/dev/null || true
echo
echo "-- Top processes (CPU) --"
ps aux 2>/dev/null | sort -nrk 3 | head -n 8 || true
