#!/bin/bash
printf "00000000\n" $(bc <<< "obase=2; $1")
