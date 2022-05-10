-- 고양이와 개는 몇 마리 있을까
SELECT animal_type, count(animal_id) count 
FROM animal_ins 
GROUP BY animal_type 
ORDER BY animal_type;

-- 동명 동물 수 찾기
SELECT name, count(animal_id) count 
FROM animal_ins 
WHERE name is not null
GROUP BY name having count(animal_id) > 1 
ORDER BY name;

-- 입양 시각 구하기 1
-- mysql
SELECT hour(datetime) hour, count(animal_id) count 
FROM animal_outs 
WHERE hour(datetime) between 9 and 20
GROUP BY hour(datetime) order by hour;

-- oracle
SELECT extract(HOUR FROM CAST (datetime AS TIMESTAMP)) hour, count(animal_id) count 
FROM animal_outs 
WHERE extract(HOUR FROM CAST (datetime AS TIMESTAMP)) between 9 and 20
GROUP BY extract(HOUR FROM CAST (datetime AS TIMESTAMP)) order by hour;

-- 입양 시각 구하기2
-- oracle
SELECT A.HOUR, NVL(B.COUNT,0) COUNT
FROM 
(SELECT level-1 as Hour
from dual 
connect by level <= 24) A
LEFT OUTER JOIN (SELECT TO_CHAR(DATETIME,'HH24') HOUR, COUNT(ANIMAL_ID) COUNT FROM ANIMAL_OUTS GROUP BY TO_CHAR(DATETIME, 'HH24')) B
ON A.HOUR = B.HOUR
ORDER BY A.HOUR
