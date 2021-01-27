#!/usr/bin/env python
import signal, time, sys

def handler(signum, time):
	print ('\nYou cannot stop me!')

signal.signal(signal.SIGINT, handler)
for i in range(int(sys.argv[1])):
	time.sleep(.1)
	print(f'\r{i}', end='')
print('\n')
