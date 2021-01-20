extract_disconnect() {
	ssh "$1" 'cat /var/log/auth.log | grep sshd | grep "Disconnected from"' > disconnect.log
}
