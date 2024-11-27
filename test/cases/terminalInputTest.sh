#!/usr/bin/sh

programm="../calc-octonions"
input="#@ 1     i      j      k      l     il    jl   kl
   0	0	0	0	0   0     0    0
   0	0	0	0	0   0     0    0"
echo -e "${input}" | ${programm}

