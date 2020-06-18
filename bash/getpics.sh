#!/bin/bash
#
# this script puts some picture files into a Pictures directory in our home directory
# it does some error testing
# it summarizes the Pictures directory when it is done
#

# Task 1: Improve this script to also retrieve and install the files kept in the https://zonzorp.net/pics.tgz tarfile
#   - use the same kind of testing that is already in the script to only download the tarfile if you don't already have it and  to make sure the download and extraction commands work, then delete the local copy of the tarfile if the extraction was successful

# Modify the script to retrive and install the files that located in https://zonzorp.net/pics.tgz tarfile
test -d ~/Pictures || mkdir ~/Pictures

# tarfile file of the picture is downloaded to the Pictures directory
test -f ~/Pictures/pics.tgz || wget -q -0 ~/Pictures/pics.tgz http://zonzorp.net/pics.tgz

#tarfile is unpacked
test -f ~/Pictures/pics.tgz && tar -xvf  ~/Pictures/pics.tgz -C ~/Pictures  && rm ~/Pictures/pics.tgz

# Make a report on what we have in the Pictures directory

echo "Report"
echo "In home directory there is directory called Pictures"

test -d ~/Pictures && cat <<EOF
Found $(find ~/Pictures -type f|wc -l) files in the Pictures directory.
The Pictures directory uses $(du -sh ~/Pictures|awk '{print $1}') space on the disk.
EOF
