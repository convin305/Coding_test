H, M = map(int,input().split())

if M < 45 : 
	M = M + 15
	if H == 0 : 
		H = 23
	else : 
		H = H - 1
else : 
	M = M - 45
print(f'{H} {M}')
