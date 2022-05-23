-- 이름이 없는 동물의 아이디
SELECT animal_id FROM animal_ins WHERE name IS NULL ORDER BY animal_id;

-- 이름이 있는 동물의 아이디
SELECT animal_id FROM animal_ins where name is not null ORDER BY animal_id;

-- NULL 처리하기
SELECT animal_type, nvl(name,'No name'), sex_upon_intake FROM animal_ins ORDER BY animal_id;

