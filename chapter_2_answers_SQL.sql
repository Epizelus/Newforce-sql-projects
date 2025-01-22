SELECT DISTINCT county
FROM ecd;

-- 88

SELECT DISTINCT company
FROM ecd;

-- 764

SELECT COUNT (DISTINCT company)
FROM ecd
WHERE ed IS NULL;

-- 608

SELECT SUM (capital_investment) AS
fjtap_cap_invest_mil
FROM ecd
WHERE fjtap IS NOT NULL;

-- $12,634,623,829.00

SELECT county_tier, cast(AVG(new_jobs) as int) as avg_new_jobs
FROM ecd
GROUP BY county_tier

-- 1 | 201
-- 2 | 128
-- 3 | 112
-- 4 | 89


SELECT company AS llc_companies
FROM ecd
WHERE company LIKE '%LLC'

-- 112
