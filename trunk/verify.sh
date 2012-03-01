#!/bin/sh

#generate wcs file, change scale if necessary
solve-field -z 2 -B none -P none -M none -S none -R none -U none -T -p -O $1
echo "------"
pic=`basename "$1" | sed 's/\(.*\)\..*/\1/'`
plot-constellations -w $pic.wcs -B -L -v 2>&1 |  egrep "Polaris|Lambda" | grep -Ev The
echo "------"
rm *.wcs *.new *.axy
