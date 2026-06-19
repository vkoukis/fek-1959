#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
export SCRIPT_DIR

process_png() {
    png="$1"
    txt="${png%.png}.txt"
    echo "Processing: $png -> $txt"
    uv run "$SCRIPT_DIR/ocr-simple.py" --lang grc "$png" > "$txt"
}
export -f process_png

FANOUT="${FANOUT:-8}"
find . -maxdepth 1 -name '*.png' -print0 | xargs -0 -P "$FANOUT" -I {} bash -c 'process_png "{}"'
