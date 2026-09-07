#!/bin/bash
# Auto-restart Impeccable Live Poll
cd /opt/data/made-by-analu-repo
while true; do
  echo "[$(date)] Starting live-poll..."
  /opt/data/.hermes/skills/impeccable/scripts/impeccable live-poll
  echo "[$(date)] live-poll exited, restarting in 2s..."
  sleep 2
done
