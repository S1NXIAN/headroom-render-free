#!/bin/sh
# Verbose bootstrap: Render swallows startup failures, so narrate everything.
set -x
echo "STARTSH alive pwd=$(pwd) user=$(whoami 2>&1) PORT=${PORT:-unset}"
ls -la
echo "headroom=$(command -v headroom 2>&1)"
echo "python=$(command -v python 2>&1)"
exec headroom proxy --host 0.0.0.0 --port "${PORT:-10000}" --memory
