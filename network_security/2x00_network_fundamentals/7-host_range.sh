#!/bin/bash
mask=$((0xFFFFFFFF << (32 - $2))); net=$(( ( $(printf "%d\n" ${1//./ }) ) & mask )); broad=$(( net | ~mask & 0xFFFFFFFF ))
printf "%d.%d.%d.%d - %d.%d.%d.%d\n" $(( (net+1) >> 24 & 255 )) $(( (net+1) >> 16 & 255 )) $(( (net+1) >> 8 & 255 )) $(( (net+1) & 255 )) $(( (broad-1) >> 24 & 255 )) $(( (broad-1) >> 16 & 255 )) $(( (broad-1) >> 8 & 255 )) $(( (broad-1) & 255 ))
