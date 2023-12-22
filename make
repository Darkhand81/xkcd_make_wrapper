#!/bin/bash

# Darkhand's xkcd make wrapper! - https://xkcd.com/149/
#
#   Name this file 'make', set it executable and place
#   it in /usr/local/bin to add vital missing functionality
#   to the standard make utility.

# Capture all arguments
ARGS="$@"

# Check if arguments are "me a sandwich"
if [[ "$ARGS" == "me a sandwich"* ]]; then
    # Check for root privileges
    if [ "$EUID" -ne 0 ]; then
        echo "What? Make it yourself."
    else
        echo "Okay."
    fi
else
    # Oh, you were serious. In that case, pass all
    # arguments to the real make program and do some actual work
    /usr/bin/make $ARGS
fi
