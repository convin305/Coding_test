def solution(s):
    b = []
    for i in s:
        if i == "(":
            b.append(i)
        else :
            try : b.pop()
            except : b.append(i)
    return len(b) == 0
