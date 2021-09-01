def solution(s):
    A = list(map(int, s.split()))
    answer = f'{min(A)} {max(A)}'
    return answer
