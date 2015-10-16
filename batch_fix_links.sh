#!/bin/bash

find ./ -type l | while read nullsymlink ;
do wrongpath=$(readlink "$nullsymlink") ;
right=$(echo "$wrongpath" | sed s'|PhD|UCDavis|') ;
ln -fs "$right" "$nullsymlink" ; done
