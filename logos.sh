#!/bin/bash
cd assets
export TMPDIR="$(mktemp -d)"
export TMPSVG="${TMPDIR}/logo-white.svg"
export TMPSVG2="${TMPDIR}/logo-black.svg"
export BG="#121416"
export BG2="#ffffff"
export SVGBG="svg{background-color:$BG;}"
export SVGBG2="svg{background-color:$BG2;}"

sed 's|</svg>|<defs><style>@import url("https://molecularprogrammers.org/assets/font/univers/style.css");</style></defs></svg>|' logo-white.svg > "${TMPSVG}"
sed "s|#fff;|$BG;|" "$TMPSVG" > "$TMPSVG2"

svgexport "${TMPSVG}" logo-white.png 10x
svgexport "${TMPSVG}" "${TMPDIR}/banner-white-750.png" :1500 "${SVGBG}"
convert -size 5000x1600 "xc:${BG}" "${TMPDIR}/banner-white-750.png" -gravity center -background none -extent 5000x1600 -layers flatten banner-white-800.png
svgexport "${TMPSVG}" "${TMPDIR}/fav-white.png" 0:-10:88:120 980:980 pad
svgexport "${TMPSVG}" "${TMPDIR}/logo-white-300.png" 0:-10:88:120 600:600 pad "${SVGBG}"
convert -size 600x600 "xc:${BG}" "${TMPDIR}/logo-white-300.png" -layers flatten logo-white-300.png

svgexport "${TMPSVG2}" logo-black.png 10x
svgexport "${TMPSVG2}" "${TMPDIR}/banner-black-750.png" :1500 "${SVGBG2}"
convert -size 5000x1600 "xc:${BG2}" "${TMPDIR}/banner-black-750.png" -gravity center -background none -extent 5000x1600 -layers flatten banner-black-800.png
svgexport "${TMPSVG2}" "${TMPDIR}/fav-black.png" 0:-10:88:120 980:980 pad
svgexport "${TMPSVG2}" "${TMPDIR}/logo-black-300.png" 0:-10:88:120 600:600 pad "${SVGBG2}"
convert -size 600x600 "xc:${BG2}" "${TMPDIR}/logo-black-300.png" -layers flatten logo-black-300.png

(cd "$TMPDIR"
  convert "fav-white.png" -background "$BG" -flatten "favicon-white.png"
  convert "fav-black.png" -background "$BG2" -flatten "favicon-black.png"
  for size in 16 32 48 64 96 128 256; do
    convert favicon-white.png -resize "${size}x${size}" "white-${size}.bmp"
    convert favicon-black.png -resize "${size}x${size}" "black-${size}.bmp"
  done
  convert white-*.bmp favicon-white.ico
  convert black-*.bmp favicon-black.ico
  convert favicon-white.png -resize "180x180" apple-touch-icon-white.png
  convert favicon-black.png -resize "180x180" apple-touch-icon-black.png
)

cp "${TMPDIR}"/{favicon-white.ico,favicon-black.ico,apple-touch-icon-white.png,apple-touch-icon-black.png} .
cp favicon-white.ico ../favicon.ico
cp apple-touch-icon-white.png ../apple-touch-icon.png
