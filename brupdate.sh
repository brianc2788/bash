#!/bin/bash
# ######################################
# brupdate.sh
# -----------
# Updates current BR record.
# Updates working & master archives.
# For personal use,
# authored by brianc2788@gmail.com
# ######################################

echo -n "Searching for BR record..."

BRTXT=$(ls | grep BR-*.txt)
BRCSV=$(ls | grep BR-*\.csv)
DEST="br-archives"
MASTER="br-archives-master.tar.gz"

# If non-null (as opposed to -z)
if [ -n $BRTXT ];then
    echo "Found ${BRTXT}."
else
    echo "No results. Aborting."
fi

# Run "brformat" python script (from my $PATH). Creates csv.
# Clone URL brformat: "https://www.github.com/user5260/pyscripts/brformat"
echo -n "Formatting ${BRTXT} to CSV (${BRCSV}..."
brformat ${BRTXT}
echo "Done."

# Make sure BRCSV isn't empty.
# If it is, rerun same as in declaration.
# Now that brformat has run, you are
# guarenteed to have a csv present.
# "-z" = null; i.e. "if nulli/empty, ..."
if [ -z $BRCSV ];then
    BRCSV=$(ls | grep BR-*\.csv)
fi

# Store .csv in variable and copy into archives.
# Replace master archive.
echo -n "Copying to (${DEST})..."
cp ${BRTXT} ${DEST}/br-2022
cp ${BRCSV} ${DEST}/br-2022
echo "Done."

echo -n "Replacing [${MASTER}]..."
rm ${MASTER}
tar -czf ${MASTER} ${DEST}
echo "Done."

echo "Exiting script..."

