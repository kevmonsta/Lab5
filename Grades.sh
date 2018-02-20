#!/bin/bash
#Kevin Eastman, Hunter Belcher
if (($# == 0)); then
	echo "Usage: Grades.sh filename"
	exit 1
fi
echo "Report"
tmpfile=$(mktemp)
while read -r uid first last g1 g2 g3
do
	avg=$((($g1 + $g2 + $g3)/ 3))
	echo "$avg [$uid] $last, $first" >> tmpfile
done < $1
sort -k3,3 -k4,4 tmpfile
rm tmpfile






