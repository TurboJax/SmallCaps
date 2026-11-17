#!/bin/bash

zipname="$(basename "$(pwd)").zip"

rm "$zipname"
zip -r "$zipname" assets/ pack.mcmeta pack.png LICENSE

if [[ -d "overlays" ]]; then
  cd overlays
  zip -r "../$zipname" *
fi
