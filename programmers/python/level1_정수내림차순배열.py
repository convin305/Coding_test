def solution(n):
    a = sorted([int(x) for x in str(n)],reverse=True)
    answer = ''
    for k in a:
        answer += str(k)
    return int(answer)
