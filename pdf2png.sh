#!/usr/bin/env bash
set -euo pipefail

if ! command -v pdftoppm &>/dev/null; then
    echo 'pdftoppm not found. If you are on Debian, run:' 1>&2
    echo 1>&2
    echo 'sudo apt update && sudo apt install -y poppler-utils' 1>&2
    exit 1
fi

convert_pdf() {
    pdf="$1"
    prefix="${pdf%.pdf}"
    echo "Converting: $pdf"
    pdftoppm -png "$pdf" "$prefix"
}
export -f convert_pdf

FANOUT="${FANOUT:-8}"
find . -maxdepth 1 -name '*.pdf' -print0 | xargs -0 -P "$FANOUT" -I {} bash -c 'convert_pdf "{}"'
