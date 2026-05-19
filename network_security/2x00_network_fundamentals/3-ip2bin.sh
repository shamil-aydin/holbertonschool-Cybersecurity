#!/bin/bash
[ -n "$1" ] && echo "$1" | tr '.' '\n' | while read -r o; do printf "%08d" $(echo "obase=2; $o" | bc); done | sed 's/\([01]\{8\}\)\([01]\{8\}\)\([01]\{8\}\)\([01]\{8\}\)/\1.\2.\3.\4/' && echo ""
