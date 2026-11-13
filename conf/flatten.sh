#!/bin/sh
# Rebuild the flat (Cydia/Sileo) index at the repo root from reprepro's exported ios indices.
# Run after any reprepro change: reprepro -b . includedeb ios foo.deb && conf/flatten.sh
set -e
cd "$(dirname "$0")/.."
cat dists/ios/main/binary-*/Packages > Packages
gzip -9nkf Packages
