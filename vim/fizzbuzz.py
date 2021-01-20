import sys

def fizz_buzz(limit):
	for i in range(1, limit+1):
		is_fizz = (i%3 == 0)
		is_buzz = (i%5 == 0)

		if is_fizz and not is_buzz:
			print('fizz')
		elif not is_fizz and is_buzz:
			print('buzz')
		elif is_fizz and is_buzz:
			print('fizzbuzz')
		else:
			print(i)

def main():
    fizz_buzz(int(sys.argv[1]))

if __name__ == "__main__":
	main()
