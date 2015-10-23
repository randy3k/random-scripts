#!/usr/bin/env bash

find ./ -type l | while read nullsymlink ;
do
    wrongpath=$(readlink "$nullsymlink")
    right=$(echo "$wrongpath" | sed "s|$1|$2|")
    echo $right
    ln -fs "$right" "$nullsymlink"
done
