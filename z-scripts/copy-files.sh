#!/bin/sh
for dir in *; do if [ -d "$dir" ] && [ -f "$dir/.github/workflows/haskell-ci.yml" ]; then
	echo "=== $dir ==="
	if [ "$dir" = "edit-distance" ]; then
		echo "SKIP"
	elif [ "$dir" = "type-equality" ]; then
		cp z-scripts/CONTRIBUTING.md       "$dir/"
	elif [ "$dir" = "postgresql-simple" ]; then
		cp z-scripts/CONTRIBUTING.md       "$dir/"
	elif [ "$dir" = "postgresql-libpq" ]; then
		cp z-scripts/CONTRIBUTING.md       "$dir/"
	elif [ "$dir" = "time-compat" ]; then
		cp z-scripts/CONTRIBUTING.md       "$dir/"
	elif [ "$dir" = "aeson-compat" ]; then #TODO
		cp z-scripts/CONTRIBUTING.md       "$dir/"
	else
    	cp z-scripts/.stylish-haskell.yaml "$dir/"
		cp z-scripts/CONTRIBUTING.md       "$dir/"
	fi
fi; done
