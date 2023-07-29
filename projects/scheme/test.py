def foo (n):
    def f (i):
        nonlocal n
        n += i
        return n
    return f

a = foo(3)
b = foo(5)

print(a(2))
print(b(2))
