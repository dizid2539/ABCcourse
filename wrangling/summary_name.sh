summary_name() {
	cat $1 | sed -E 's/.*user (.*)/\1/' | awk '{print $1}' | uniq -c
}
