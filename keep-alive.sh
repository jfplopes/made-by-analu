#!/bin/bash
# Keep Impeccable Live alive by polling every 30 seconds
while true; do
  curl -s -o /dev/null http://localhost:8400/live.js 2>/dev/null
  sleep 30
done
