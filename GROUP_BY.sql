-- GROUPING SETS : 여러 그룹화를 한 번에 수행하여 결과를 반환할 수 있도록 해줍니다.
SELECT region, product, SUM(sales_amount)
FROM sales
GROUP BY GROUPING SETS (
    (region),          -- region별로 집계
    (product),         -- product별로 집계
    (region, product), -- region별, product별로 집계
    ()                 -- 전체 집계
);
-- region 별 합계: 각 지역의 sales_amount 합계.
-- product 별 합계: 각 제품의 sales_amount 합계.
-- region 및 product 별 합계: 각 지역-제품 조합의 sales_amount 합계.
-- 전체 합계: 모든 sales_amount의 합계.

-- ROLLUP : 다차원 집계를 수행하며, 상위 차원에서 하위 차원으로 내려가며 부분 집계를 수행합니다.
SELECT region, product, SUM(sales_amount)
FROM sales
GROUP BY ROLLUP(region, product);
-- region과 product로 그룹화된 합계.
-- 각 region에 대한 합계.
-- 전체 합계.

-- CUBE : 모든 가능한 그룹화 조합에 대해 집계를 수행합니다.
SELECT region, product, SUM(sales_amount)
FROM sales
GROUP BY CUBE(region, product);
-- region과 product로 그룹화된 합계.
-- 각 region에 대한 합계.
-- 각 product에 대한 합계.
-- 전체 합계.
