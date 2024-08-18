-- UNION : 합집합 
-- 두 개 이상의 SELECT 쿼리 결과를 결합하여 하나의 결과 집합으로 반환합니다. 이때 중복된 행은 제거됩니다.
SELECT column1 FROM table1
UNION
SELECT column1 FROM table2;

-- UNION ALL : 합집합
-- UNION과 유사하지만, 중복된 행을 제거하지 않고 모두 반환합니다.
SELECT column1 FROM table1
UNION ALL
SELECT column1 FROM table2;


-- INTERSECT : 교집합
-- 두 개 이상의 SELECT 쿼리 결과에서 공통적으로 나타나는 행만을 반환합니다.
SELECT column1 FROM table1
INTERSECT
SELECT column1 FROM table2;


-- MINUS(EXCEPT) : 차집합
-- 첫 번째 SELECT 쿼리의 결과에서 두 번째 SELECT 쿼리의 결과를 제외한 나머지 행을 반환합니다.
SELECT column1 FROM table1
MINUS
SELECT column1 FROM table2;
