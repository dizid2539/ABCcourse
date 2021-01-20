import random as r
import sys

filename = sys.argv[1]
width, height = int(sys.argv[2]), int(sys.argv[3])
with open(filename, 'w') as f:
	for i in range(height):
		line = ''
		if r.random() < 0.05:
			line = '    ' 
		for j in range(width):
			line += str(r.randint(0,9))
			if r.random() < 0.1:
				line += ' '
		line += '\n'
		f.write(line)
