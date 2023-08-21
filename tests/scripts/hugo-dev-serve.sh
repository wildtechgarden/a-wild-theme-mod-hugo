#!/bin/bash

if [ -z "${HUGO_CACHEDIR}" ]; then
	HUGO_CACHEDIR="$(pwd)/hugo-cache"
fi

export HUGO_MODULE_REPLACEMENTS="github.com/wildtechgarden/a-wild-theme-mod-hugo -> ../../a-wild-theme-mod-hugo, github.com/wildtechgarden/demo-test-site-hugo-wtg -> ../../wild-demo-test-site-hugo-wtg, github.com/wildtechgarden/module-starter-hugo-wtg -> ../../module-starter-hugo-wtg"
export HUGO_RESOURCEDIR="$(pwd)/resources"
hugo  serve --buildDrafts --buildFuture --source "$(pwd)" --environment "development" --config "$(pwd)"/tests/config/hugo.toml --destination $(pwd)/public
