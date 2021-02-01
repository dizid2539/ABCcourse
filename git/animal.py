import sys

def cat():
    print("meow")

def dog():
    print("woof")

def default():
    print("hello")

def main():
    if sys.argv[1] == "cat":
        cat()
    elif sys.argv[1] == 'dog':
        dog()
    else:
        default()

if __name__ == "__main__":
    main()
