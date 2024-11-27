#!/usr/bin/sh

programm="../calc-octonions"
input="inputs/$(basename $0 .sh)1.input"
input2="inputs/$(basename $0 .sh)2.input"

./${programm} ${input} ${input2}
