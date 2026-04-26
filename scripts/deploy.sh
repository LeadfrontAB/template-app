#!/bin/bash
set -euo pipefail
echo "Deploying $(basename $(pwd))..."
git pull origin main
docker compose up -d --build --force-recreate
echo "Deploy complete"
