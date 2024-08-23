-- INNER JOIN : 공통된 값이 있는 행만 반환합니다.

-- LEFT JOIN (LEFT OUTER JOIN) : 왼쪽 테이블의 모든 행과 오른쪽 테이블의 일치하는 행을 반환하며, 
-- 일치하지 않으면 NULL을 반환합니다.

-- RIGHT JOIN (RIGHT OUTER JOIN): 오른쪽 테이블의 모든 행과 왼쪽 테이블의 일치하는 행을 반환하며, 
-- 일치하지 않으면 NULL을 반환합니다.
 
-- FULL JOIN (FULL OUTER JOIN) : 양쪽 테이블의 모든 행을 반환하며, 일치하지 않는 경우 NULL을 반환합니다.

-- CROSS JOIN : 두 테이블의 모든 조합을 반환합니다.

-- SELF JOIN : 같은 테이블의 행을 서로 조인합니다.

-- NATURAL JOIN : 두 테이블에서 공통된 이름의 열을 기준으로 자동으로 조인하는 방식입니다.

-- Hash Join : 테이블 간의 조인을 해시 테이블을 생성해 효율적으로 수행하는 방법으로, 
-- 큰 테이블 간의 조인 시 특히 유용하며 성능 이점을 제공합니다.

-- EQUI JOIN(INNER JOIN의 한 종류) : 조인에 관여하는 테이블 강의 컬럼 값들이 정확하게 일치하는 경우에 사용되는 방법
-- 연산자(= 만 사용)

-- NON EQUI JOIN : 연산자(>, <, <=, >=, !=, BETWEEN 등)를 사용
