#!/bin/bash
# Update br records & archives.

echo "Searching for BR record..."

BRTXT=$(ls | grep BR-*.txt)


# If non-null (as opposed to -z)
if [ -n $BRTXT ];then
    echo "Found ${BRTXT}."
else
    echo "No results."
fi

echo $HOME

# Run "brformat" python script (from my $PATH). Creates csv.
# (brformat: "https://www.github.com/user5260/pyscripts/brformat")
brformat ${BRTXT}

