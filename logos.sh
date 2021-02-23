#!/bin/bash
cd assets
export TMPDIR="$(mktemp -d)"

svgexport logo-white.svg logo-white.png 10x
svgexport logo-white.svg "${TMPDIR}/fav-white.png" 0:-10:88:120 980:980 pad

(cd "$TMPDIR"
  convert "fav-white.png" -background "#121416" -flatten "favicon.png"
  for size in 16 32 48 64 96 128 256; do
    convert favicon.png -resize "${size}x${size}" "${size}.bmp"
  done
  convert *.bmp favicon.ico
  convert favicon.png -resize "180x180" apple-touch-icon.png
)

cp "${TMPDIR}/favicon.ico" ../favicon.ico
cp "${TMPDIR}/apple-touch-icon.png" ../apple-touch-icon.png
