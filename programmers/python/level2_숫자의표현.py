def solution(n):
    answer = 0
    for i in range(1,n+1):
        isum = 0
        for j in range(i,n+1):
            isum += j
            if isum == n:
                answer += 1
                break
            elif isum > n :
                break
    return answer
