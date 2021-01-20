extract_invalid() {
	ssh "$1" 'cat /var/log/auth.log | grep sshd | grep invalid' > invalid.log
}
