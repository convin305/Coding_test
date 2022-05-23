-- 없어진 기록 찾기
SELECT outs.animal_id, outs.name FROM animal_outs outs
WHERE NOT EXISTS (select * from animal_ins ins where ins.animal_id = outs.animal_id) ORDER BY outs.animal_id

-- 있었는데요 없었습니다
SELECT ins.animal_id, ins.name from animal_ins ins
LEFT JOIN animal_outs outs
ON ins.animal_id = outs.animal_id
WHERE ins.datetime > outs.datetime
ORDER BY ins.datetime

-- 오랜 기간 보호한 동물(1)
SELECT name, datetime FROM(
    SELECT ins.name, ins.datetime FROM animal_ins ins
    LEFT JOIN animal_outs outs
    ON ins.animal_id = outs.animal_id
    WHERE outs.datetime is null
    ORDER BY ins.datetime)
WHERE rownum <4 
