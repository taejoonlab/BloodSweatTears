#!/bin/bash

FA_GZ=$1
OUT=$FA_GZ".tx2gene"

zgrep '>' $FA_GZ | awk -F"|" '{print $0"\t"$6}' | sed "s/^>//" > $OUT
