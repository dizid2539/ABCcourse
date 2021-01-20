average() {
	cat $1 | awk 'BEGIN {num=0; print "("} {num++; print $1; print "+"} END {print "0)/"; print num}' | paste -sd ' ' | bc -l
}
