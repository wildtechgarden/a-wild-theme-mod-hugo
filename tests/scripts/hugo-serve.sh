#!/bin/bash

set -e
set -o pipefail

if [ -z "${HUGO_CACHEDIR}" ]; then
	HUGO_CACHEDIR="$(pwd)/hugo-cache"
fi

export HUGO_MODULE_REPLACEMENTS="github.com/wildtechgarden/a-wild-theme-mod-hugo -> $(pwd)/../a-wild-theme-mod-hugo"
export HUGO_RESOURCEDIR="$(pwd)/resources"
export SITEROOT="$(pwd)"
export SITECONFIG="$(pwd)"/tests/config/test-config.toml
cd tests/config && hugo serve --buildDrafts --buildFuture --source "${SITEROOT}" --environment "${HUGO_ENV:-development}" --config "${SITECONFIG}"
