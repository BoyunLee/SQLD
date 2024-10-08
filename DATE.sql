-- '2023.01.10 10'이라는 문자열을 날짜로 변환합니다.
-- 여기서 사용된 형식 'YYY.MM.DD HH24'는 연도(YYY), 월(MM), 일(DD), 24시간제 시간(HH24)을 나타냅니다.
-- 결과는 2023년 1월 10일 오전 10시입니다.

-- + 1/24/(60/10):
-- 이 부분은 날짜에 10분을 더하는 계산입니다.
-- 1/24는 하루(24시간)의 1시간을 의미하고, 1/24/(60/10)는 10분을 의미합니다.
-- 따라서 원래 날짜와 시간에 10분이 더해집니다.
-- 실행 결과 : 2023.01.10 10:10:00

-- ORACLE CODE
SELECT TO_CHAR(TO_DATE('2023.01.10 10', 'YYY.MM.DD HH24')
+ 1/24/(60/10), 'YYY.MM.DD HH24:MI:SS') FROM DUAL;
