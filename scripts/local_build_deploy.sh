#!/bin/bash
# cspell:ignore awild

set -e
set -o pipefail

rm -rf public

export BASEURL="https://www.a-wild-theme.wtg-demos.ca/"
export HUGO_RESOURCEDIR="$(pwd)"/resources
# export HUGO_MODULE_REPLACEMENTS="github.com/wildtechgarden/a-wild-theme-mod-hugo -> $(pwd)"
export SITEROOT="$(pwd)"
export SITECONFIG="$(pwd)"/tests/config/hugo.toml
export TARGET="$(pwd)"/public
export CURDIR="$(pwd)"

cd "$(pwd)"/tests/config && hugo --gc --minify -b $BASEURL --source "${SITEROOT}" --destination "${TARGET}" --config "${SITECONFIG}"
cd "$CURDIR"
rclone sync --progress --checksum public/ wtg-awild:./
