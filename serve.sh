#!/bin/bash
# Preview the Emily Sumner site locally
# Usage: ./serve.sh [port]
# Then open http://localhost:PORT in your browser

PORT="${1:-1313}"
DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Building site..."
cd "$DIR" && hugo --config config.yaml --minify

echo ""
echo "Serving at http://localhost:$PORT"
echo "Press Ctrl+C to stop"
echo ""
cd public && python3 -m http.server $PORT
