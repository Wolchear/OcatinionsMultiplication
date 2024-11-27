#!/usr/bin/sh

programm="../calc-octonions"
input="inputs/$(basename $0 .sh).input"

cat ${input} | ./${programm} 
