#!/bin/bash
# ######################################
# brupdate.sh
# -----------
# Personal-use utility for use with
# my "BR" stuff.
# Requires brformat(.py)
# http://brianc2788.github.io/
# ######################################

echo -n "Searching for BR record..."

# BR file names are formatted as "BR-mmmYYYY.ext"
# where m is 3-letter, lower-case month and Y is
# a full, 4-digit year followed by an extension.
BRTXT=$(ls | grep BR-*.txt)
BRCSV=$(ls | grep BR-*\.csv)
DEST="br-archives"
MASTER="br-archives-master.tar.gz"

# Check that BRTXT is non-null.
if [ -n $BRTXT ];then
    echo "Found ${BRTXT}."
else
    echo "No BR text file found. Aborting."
fi

# Run "brformat" python script (env path or working dir). Creates csv.
echo -n "Formatting ${BRTXT} to CSV (${BRCSV}..."
brformat ${BRTXT}
echo "Done."

# Check if csv was found earlier. If not, it should be there now.
if [ -z $BRCSV ];then
    BRCSV=$(ls | grep BR-*\.csv)
fi

# Copy files into this year's dir. Fix hard-coded dir name.*
echo -n "Copying to (${DEST})..."
cp ${BRTXT} ${DEST}/br-2022
cp ${BRCSV} ${DEST}/br-2022
echo "Done."

# Delete old master archives file and create a new one.
echo -n "Replacing [${MASTER}]..."
rm ${MASTER}
tar -czf ${MASTER} ${DEST}
echo "Done."

echo "Exiting script..."

