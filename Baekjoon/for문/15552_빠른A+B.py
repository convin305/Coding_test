import sys

repeat = int(input())

for _ in range(repeat):
  a,b = map(int,sys.stdin.readline().split())
  print(a + b)
