#!/bin/bash
if ip route get "$1" 2>/dev/null | grep -q "via"; then
    echo "REMOTE"
else
    echo "LOCAL"
fi
