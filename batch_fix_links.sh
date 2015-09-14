#!/bin/bash

find ./ -type l | while read nullsymlink ;
do wrongpath=$(readlink "$nullsymlink") ;
right=$(echo "$wrongpath" | sed s'|Randy/Google Drive/Documents|Randy/Documents|') ;
ln -fs "$right" "$nullsymlink" ; done
