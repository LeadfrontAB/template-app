#!/bin/bash
set -euo pipefail
MAX_RETRIES=10
for i in $(seq 1 $MAX_RETRIES); do
  if curl -sf http://localhost:3000/ -o /dev/null 2>/dev/null; then
    echo "HEALTHY after $i attempts"
    exit 0
  fi
  sleep 3
done
echo "UNHEALTHY after $MAX_RETRIES attempts"
exit 1
