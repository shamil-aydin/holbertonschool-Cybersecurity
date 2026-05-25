#!/bin/bash
traceroute -n "$1" 2>/dev/null | awk 'AND($1, /^[0-9]+$/) {max=$1} END {print max}'
