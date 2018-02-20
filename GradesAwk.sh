#!/usr/bin/awk -f
#Kevin Eastman, Hunter Belcher
BEGIN{ 
if (ARGV[1] == 0) { 
	print "Usage: GradesAwk.sh filename" 
	exit 1 
}
print "Report" 
}

{
sum = $4 + $5 + $6
avg = int (sum/3)
print avg, "["$1"]", $3",", $2 | "sort -k3 -k2"
}