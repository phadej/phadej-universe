#!/bin/sh

for dir in *; do if [ -d "$dir" ] && [ -f "$dir/.travis.yml" ]; then
	echo "=== $dir ==="
    (cd "$dir" && cabal-fmt -i $(find . -name "*.cabal" -maxdepth 2))
fi; done
