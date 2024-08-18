SELECT C3
FROM TAB1
-- 설명: 계층적 쿼리에서 탐색을 시작할 루트 노드를 지정합니다.
-- 동작: C2가 NULL인 행을 루트로 시작합니다. 즉, C2가 NULL인 모든 행이 트리의 루트가 됩니다.
START WITH C2 IS NULL
-- 설명: 부모-자식 관계를 정의하는 구문입니다. 여기서 PRIOR 키워드는 이전 행의 값(부모)을 참조합니다.
-- 동작: 현재 행의 C1이 부모 행의 C2와 같을 때, 그 행을 자식으로 연결합니다.
CONNECT BY PRIOR C1 = C2
-- 설명: 동일한 부모를 가진 형제 노드들(형제 관계에 있는 데이터)을 특정 열을 기준으로 정렬합니다.
-- 동작: 같은 부모를 가진 노드들(Siblings)을 C3 열의 값에 따라 내림차순으로 정렬합니다.
-- 즉, 각 계층 내에서 형제 노드들 간의 순서를 C3 DESC 기준으로 정렬합니다.
ORDER BY SIBLINGS BY C3 DESC;