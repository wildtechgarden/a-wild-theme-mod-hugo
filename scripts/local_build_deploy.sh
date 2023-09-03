#!/bin/bash
# cspell:ignore wtgawild

set -e
set -o pipefail

rm -rf public

export BASEURL="https://www.a-wild-theme.wtg-demos.ca/"

HUGO_RESOURCEDIR="$(pwd)"/resources hugo --gc --minify -b $BASEURL --source "$(pwd)" --destination "$(pwd)"/public --config "$(pwd)"/tests/config/hugo.toml
rclone sync --progress public/ wtgawild:./
