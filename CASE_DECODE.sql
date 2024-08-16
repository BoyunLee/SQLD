-- LOC 값이 'NEW YORK'이면, AREA 열에 'EAST'를 저장합니다.
-- 그렇지 않으면(ELSE), AREA 열에 'ETC'를 저장합니다.

SELECT LOC,
CASE WHEN LOC = 'NEW YORK' THEN 'EAST'
ELSE 'ETC'
END AS AREA
FROM DEPT;

-- 첫 번째 인자는 LOC (비교 대상 열)
-- 두 번째 인자는 'NEW YORK' (비교할 값)
-- 세 번째 인자는 'EAST' (조건이 참일 때 반환할 값)
-- 네 번째 인자는 'ETC' (조건이 거짓일 때 반환할 값)

SELECT LOC,
DECODE(LOC, 'NEW YORK', 'EAST', 'ETC') AS AREA
FROM DEPT;
