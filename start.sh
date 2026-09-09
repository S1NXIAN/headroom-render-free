#!/bin/sh
# Render runs dockerCommand without a shell and without word-splitting, so
# flags cannot live in render.yaml. They live here instead.
exec headroom proxy --host 0.0.0.0 --port "${PORT:-10000}" --memory
