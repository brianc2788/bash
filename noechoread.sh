#!/bin/bash
# read input without echoing the input back to the user
# using the -s option.
# See shell builtins (read) for more details.

#INPUT1=""

echo -n "sup?: "
read -s INPUT1
echo -e "\nyou typed: ${INPUT1}"
