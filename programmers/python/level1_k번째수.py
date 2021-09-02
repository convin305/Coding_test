def solution(array, commands):
    answer = []
    for c in commands:
        i = c[0]
        j = c[1]
        k = c[2]
        new = sorted(array[i-1:j])
        answer.append(new[k-1])
    return answer
