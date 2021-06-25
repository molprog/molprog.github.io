#!/bin/bash
cd assets
export TMPDIR="$(mktemp -d)"
export TMPSVG="${TMPDIR}/logo-white.svg"
export BG=#121416
export SVGBG="svg{background-color:$BG;}"

sed 's|</svg>|<defs><style>@import url("https://molecularprogrammers.org/assets/font/univers/style.css");</style></defs></svg>|' logo-white.svg > "${TMPSVG}"
svgexport "${TMPSVG}" logo-white.png 10x
svgexport "${TMPSVG}" "${TMPDIR}/banner-750.png" :1500 "${SVGBG}"
convert -size 5000x1600 xc:$BG "${TMPDIR}/banner-750.png" -gravity center -background none -extent 5000x1600 -layers flatten banner-800.png
svgexport "${TMPSVG}" "${TMPDIR}/fav-white.png" 0:-10:88:120 980:980 pad
svgexport "${TMPSVG}" "${TMPDIR}/logo-300.png" 0:-10:88:120 600:600 pad "${SVGBG}"
convert -size 600x600 xc:$BG "${TMPDIR}/logo-300.png" -layers flatten logo-300.png

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
