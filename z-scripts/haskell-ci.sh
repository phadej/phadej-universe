#!/bin/sh

for dir in *; do if [ -d "$dir" ] && [ -f "$dir/.travis.yml" ]; then
	echo "=== $dir ==="
	(cd "$dir" && haskell-ci regenerate)
fi; done
