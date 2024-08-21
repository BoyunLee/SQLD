SELECT * 
FROM KPIPOOL 
-- 조건 1: SUBKPI = 20 그리고 MAINKPI = 10
-- 조건 2: SUBKPI = 0 그리고 MAINKPI = 30
WHERE (SUBKPI, MAINKPI) 
IN ((20,10),(0,30));