#!/bin/bash

if [ "${{ matrix.r }}" == "devel" ]; then
  R_FILE=$(curl -sL http://mac.r-project.org/ | sed -nE 's|.*href="?(.*/R-[^/]*\.pkg)"?>.*|\1|p' | tail -n1)
  URL="http://mac.r-project.org/$R_FILE"
else
  R_FILE=$(curl -sL https://cran.r-project.org/bin/macosx/el-capitan/base/ | grep -o 'R-${{ matrix.r }}[0-9\.]*.pkg' | tail -n1)
  URL="https://cran.r-project.org/bin/macosx/el-capitan/base/$R_FILE"
fi
echo downloading "$URL"
curl -L "$URL" -o R.pkg
sudo installer -pkg R.pkg -target /
