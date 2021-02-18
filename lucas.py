def lucas(n, a, b):

    if n == 0:
        print(2)
        return 2
    elif n == 1:
        print(1)
        return 1
    else:
        result = a * lucas(n - 1, a, b) + b * lucas(n - 2, a, b)
        print(result)
        return result


def main():
    n = int(input("Enter n: "))
    a = int(input("Enter a: "))
    b = int(input("Enter b: "))
    lucas(n, a, b)


main()
