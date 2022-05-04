#!/bin/bash
# use pgrep (returns PIDs matching PATTERN) to
# kill off those pesky hibernation scripts/
# processes that keep preventing things like
# networking from running sometimes.

# write list of PIDs to a temp file & call kill -f.
pgrep sleep > 
pgrep -u $(whoami)
# getting ideas from the kali-undercover script
pgrep -u username -x process
