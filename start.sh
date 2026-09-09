#!/bin/sh
# Render runs dockerCommand with no shell and no word-splitting, so the
# proxy flags live here (an absolute path), not in render.yaml.
echo "start.sh: launching headroom proxy on PORT=${PORT:-10000}"
exec headroom proxy --host 0.0.0.0 --port "${PORT:-10000}" --memory
