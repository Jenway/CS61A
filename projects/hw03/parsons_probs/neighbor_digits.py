def neighbor_digits(num, prev_digit=-1):
    """
    Returns the number of digits in num that have the same digit to its right
    or left.
    >>> neighbor_digits(111)
    3
    >>> neighbor_digits(123)
    0
    >>> neighbor_digits(112)
    2
    >>> neighbor_digits(1122)
    4
    """
    "*** YOUR CODE HERE ***"
    if num  < 10:
        return 1 if prev_digit == num else 0
    else:
        if num % 10 == ((num //10) %10) or num % 10 == prev_digit:
            return 1 + neighbor_digits(num // 10,num %10)
        else:
            return 0 + neighbor_digits(num // 10,num %10)
