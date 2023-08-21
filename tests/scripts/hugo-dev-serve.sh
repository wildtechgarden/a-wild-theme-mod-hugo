#!/bin/bash

if [ -z "${HUGO_CACHEDIR}" ]; then
	HUGO_CACHEDIR="$(pwd)/hugo-cache"
fi

export HUGO_MODULE_REPLACEMENTS="github.com/wildtechgarden/a-wild-theme-mod-hugo -> ../../a-wild-theme-mod-hugo, github.com/wildtechgarden/demo-test-site-hugo-wtg -> ../../demo-test-site-hugo-wtg"
export HUGO_RESOURCEDIR="$(pwd)/resources"
hugo  serve --buildDrafts --buildFuture --source "$(pwd)" --environment "development" --config "$(pwd)"/tests/config/hugo.toml --destination $(pwd)/public
