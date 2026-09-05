#!/bin/bash
# Keep Impeccable Live agent polling alive
SCRIPT="/opt/data/profiles/forma/skills/creative/impeccable/scripts/impeccable"
cd /opt/data/made-by-analu-repo || exit 1

while true; do
  "$SCRIPT" live-poll --timeout 15000 2>/dev/null
  sleep 2
done
