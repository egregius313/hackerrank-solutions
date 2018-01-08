import numpy

x, y = map(int, input().strip().split(' '))
print(numpy.eye(x, y))
