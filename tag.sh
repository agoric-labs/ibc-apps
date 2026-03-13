#! /bin/bash
set -ex
suffix=-alpha.agoric.1
VERSION=v10.5.0$suffix

xs="middleware/packet-forward-middleware"
tags=

#for x in "$VERSION" "client/v2.0.0-beta.11-$VERSION"; do
#  git tag -f "$x"
#  tags="$tags $x"
#done
for x in $xs; do
  git tag -f "$x/$VERSION"
  tags="$tags $x/$VERSION"
done
git push -fu origin$tags
