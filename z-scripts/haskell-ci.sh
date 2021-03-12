#!/bin/sh

for dir in *; do if [ -d "$dir" ] && [ -f "$dir/.github/workflows/haskell-ci.yml" ]; then
	echo "=== $dir ==="
	(cd "$dir" && haskell-ci regenerate)
fi; done
