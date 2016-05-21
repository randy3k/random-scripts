#! /usr/bin/env bash

BASEDIR=$(pwd "$(dirname $0)")
BCD="/opt/local/etc/bash_completion.d"
FILES=(
git-completion.bash
)


cd "$BCD"
for f in "${FILES[@]}"; do
    ln -sf "$BASEDIR"/"$f" "$f"
done
