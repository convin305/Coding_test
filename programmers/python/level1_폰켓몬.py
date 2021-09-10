def solution(nums):
    can = len(nums) // 2     # 선택할 수 있는 수
    species = len(set(nums))    # 폰켓몬의 종류 수
    if can <= species : # 선택가능한 수가 종류보다 적으면 선택가능한게 최대
        answer = can
    else : 
        answer = species
    return answer
