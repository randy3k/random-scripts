#! /usr/bin/env bash

BASEDIR=$(pwd "$(dirname $0)")
ZSHDIR="/usr/local/share/zsh/site-functions"
FILES=(
_git-delete
_git-publish
_git-update
)


cd "$ZSHDIR"
for f in "${FILES[@]}"; do
    ln -sf "$BASEDIR"/"$f" "$f"
done
