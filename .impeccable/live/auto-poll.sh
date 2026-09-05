#!/bin/bash
# Auto-poll Impeccable Live server every 10 seconds
# Keeps the connection alive and handles events as they arrive

SCRIPT="/opt/data/profiles/forma/skills/creative/impeccable/scripts/impeccable"
PROJECT="/opt/data/made-by-analu-repo"

cd "$PROJECT" || exit 1

echo "[$(date)] Starting auto-poll loop (10s interval)"

while true; do
  # Check if live server is still running
  if ! curl -s -o /dev/null -w "%{http_code}" "http://localhost:8400/poll" 2>/dev/null | grep -q "200\|408"; then
    echo "[$(date)] Live server not reachable, waiting..."
    sleep 10
    continue
  fi

  # Poll with a short timeout so we loop back quickly
  RESULT=$("$SCRIPT" live-poll --timeout 12000 2>&1)
  EXIT_CODE=$?

  if [ $EXIT_CODE -ne 0 ] && [ -n "$RESULT" ]; then
    echo "[$(date)] Poll error: $RESULT"
  fi

  # Check for events that need handling
  if echo "$RESULT" | grep -q '"type":"generate"'; then
    echo "[$(date)] Generate event received — agent must handle"
  elif echo "$RESULT" | grep -q '"type":"accept"'; then
    echo "[$(date)] Accept event received — agent must carbonize"
  elif echo "$RESULT" | grep -q '"type":"steer"'; then
    echo "[$(date)] Steer event received — agent must handle"
  elif echo "$RESULT" | grep -q '"type":"exit"'; then
    echo "[$(date)] Session ended"
    break
  fi

  sleep 10
done

echo "[$(date)] Auto-poll loop stopped"
