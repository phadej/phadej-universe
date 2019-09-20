#!/bin/sh

dostuff() {
  localdir=$1
  echo ">>> $localdir"
  # shellcheck disable=SC2046
  stylish-haskell -i $(find "$localdir" -name "*.hs")
  hlint "$localdir" || exit 1
}

dohlint() {
  localdir=$1
  echo ">>> $localdir"
  hlint "$localdir" || exit 1
}

for dir in *; do if [ -d "$dir" ] && [ -f "$dir/.travis.yml" ]; then
  echo "=== $dir ==="
    if [ "$dir" = "edit-distance" ]; then
      echo "SKIP" # Inherited package
    elif [ "$dir" = "postgresql-simple" ]; then
      echo "SKIP" # Inherited package
    elif [ "$dir" = "tdigest" ]; then
      dostuff "$dir/tdigest/src"
      dostuff "$dir/tdigest-Chart/src"
      elif [ "$dir" = "these" ]; then
      dostuff "$dir/these/src"
      dostuff "$dir/these-lens/src"
      dostuff "$dir/these-optics/src"
      dostuff "$dir/semialign/src"
      dostuff "$dir/semialign-indexed/src"
      dostuff "$dir/monad-chronicle/src"
    elif [ "$dir" = "aeson-compat" ]; then
      dohlint "$dir/src"
    elif [ "$dir" = "time-compat" ]; then
      echo "SKIP" # code copied from time package
    elif [ "$dir" = "type-equality" ]; then
      echo "SKIP" # compat package
    elif [ "$dir" = "functor-classes-compat" ]; then
      echo "SKIP" # compat package
    elif [ "$dir" = "vec" ]; then
      dostuff "$dir/vec/src"
      # dostuff "$dir/fin/src" # fails to parse
      dostuff "$dir/dec/src"
    elif [ -d "$dir/src" ]; then
      dostuff "$dir/src"
    else
      echo "What to do with this repository?"
      exit 1
    fi
fi; done
