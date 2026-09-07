-- Bank Customer Retention & Churn Analysis
-- Table: bank_churn
-- Purpose: identify customer characteristics and meaningful high-risk churn segments.

-- 1. Create analysis groups
ALTER TABLE bank_churn ADD COLUMN age_group TEXT;

UPDATE bank_churn
SET age_group =
    CASE
        WHEN age BETWEEN 18 AND 27 THEN '18-27'
        WHEN age BETWEEN 28 AND 37 THEN '28-37'
        WHEN age BETWEEN 38 AND 47 THEN '38-47'
        WHEN age BETWEEN 48 AND 57 THEN '48-57'
        WHEN age BETWEEN 58 AND 67 THEN '58-67'
        ELSE '68+'
    END;

ALTER TABLE bank_churn ADD COLUMN balance_group TEXT;

UPDATE bank_churn
SET balance_group =
    CASE
        WHEN balance < 100000 THEN '0-100k'
        WHEN balance < 200000 THEN '100k-200k'
        ELSE '200k+'
    END;

-- 2. Overall churn
SELECT
    COUNT(*) AS total_customers,
    SUM(CASE WHEN exited = 1 THEN 1 ELSE 0 END) AS customer_churn,
    ROUND(SUM(CASE WHEN exited = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate
FROM bank_churn;

-- 3. Churn by geography
SELECT
    geography,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN exited = 1 THEN 1 ELSE 0 END) AS customer_churn,
    ROUND(SUM(CASE WHEN exited = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate
FROM bank_churn
GROUP BY geography
ORDER BY churn_rate DESC;

-- 4. Churn by age group
SELECT
    age_group,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN exited = 1 THEN 1 ELSE 0 END) AS customer_churn,
    ROUND(SUM(CASE WHEN exited = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate
FROM bank_churn
GROUP BY age_group
ORDER BY age_group;

-- 5. Churn by customer activity
SELECT
    isactivemember,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN exited = 1 THEN 1 ELSE 0 END) AS customer_churn,
    ROUND(SUM(CASE WHEN exited = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate
FROM bank_churn
GROUP BY isactivemember
ORDER BY churn_rate DESC;

-- 6. Churn by number of products
SELECT
    numofproducts,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN exited = 1 THEN 1 ELSE 0 END) AS customer_churn,
    ROUND(SUM(CASE WHEN exited = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate
FROM bank_churn
GROUP BY numofproducts
ORDER BY numofproducts;

-- 7. Churn by balance group
SELECT
    balance_group,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN exited = 1 THEN 1 ELSE 0 END) AS customer_churn,
    ROUND(SUM(CASE WHEN exited = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate
FROM bank_churn
GROUP BY balance_group
ORDER BY churn_rate DESC;

-- 8. Germany: age and churn
SELECT
    age_group,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN exited = 1 THEN 1 ELSE 0 END) AS customer_churn,
    ROUND(SUM(CASE WHEN exited = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate
FROM bank_churn
WHERE geography = 'Germany'
GROUP BY age_group
ORDER BY age_group;

-- 9. Germany: activity and churn
SELECT
    isactivemember,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN exited = 1 THEN 1 ELSE 0 END) AS customer_churn,
    ROUND(SUM(CASE WHEN exited = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate
FROM bank_churn
WHERE geography = 'Germany'
GROUP BY isactivemember
ORDER BY churn_rate DESC;

-- 10. Germany, age 48-57: activity and churn
SELECT
    isactivemember,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN exited = 1 THEN 1 ELSE 0 END) AS customer_churn,
    ROUND(SUM(CASE WHEN exited = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate
FROM bank_churn
WHERE geography = 'Germany'
  AND age_group = '48-57'
GROUP BY isactivemember
ORDER BY churn_rate DESC;

-- 11. Germany, age 48-57: product ownership and churn
SELECT
    numofproducts,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN exited = 1 THEN 1 ELSE 0 END) AS customer_churn,
    ROUND(SUM(CASE WHEN exited = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate
FROM bank_churn
WHERE geography = 'Germany'
  AND age_group = '48-57'
GROUP BY numofproducts
ORDER BY numofproducts;

-- 12. Germany, age 48-57: products x activity
SELECT
    numofproducts,
    isactivemember,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN exited = 1 THEN 1 ELSE 0 END) AS customer_churn,
    ROUND(SUM(CASE WHEN exited = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate
FROM bank_churn
WHERE geography = 'Germany'
  AND age_group = '48-57'
GROUP BY numofproducts, isactivemember
ORDER BY numofproducts, churn_rate DESC;

-- 13. Balance group x geography
SELECT
    balance_group,
    geography,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN exited = 1 THEN 1 ELSE 0 END) AS customer_churn,
    ROUND(SUM(CASE WHEN exited = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate
FROM bank_churn
GROUP BY balance_group, geography
ORDER BY balance_group, churn_rate DESC;

-- 14. Balance group x age
SELECT
    balance_group,
    age_group,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN exited = 1 THEN 1 ELSE 0 END) AS customer_churn,
    ROUND(SUM(CASE WHEN exited = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate
FROM bank_churn
GROUP BY balance_group, age_group
ORDER BY balance_group, age_group;

-- 15. Germany: balance group x age
SELECT
    balance_group,
    age_group,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN exited = 1 THEN 1 ELSE 0 END) AS customer_churn,
    ROUND(SUM(CASE WHEN exited = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate
FROM bank_churn
WHERE geography = 'Germany'
GROUP BY balance_group, age_group
ORDER BY balance_group, age_group;

-- 16. Product ownership x geography
SELECT
    numofproducts,
    geography,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN exited = 1 THEN 1 ELSE 0 END) AS customer_churn,
    ROUND(SUM(CASE WHEN exited = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate
FROM bank_churn
GROUP BY numofproducts, geography
ORDER BY numofproducts, churn_rate DESC;

-- 17. Product ownership x activity
SELECT
    numofproducts,
    isactivemember,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN exited = 1 THEN 1 ELSE 0 END) AS customer_churn,
    ROUND(SUM(CASE WHEN exited = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate
FROM bank_churn
GROUP BY numofproducts, isactivemember
ORDER BY numofproducts, churn_rate DESC;

-- 18. Final high-risk customer segmentation
-- Minimum group size of 50 prevents tiny segments from dominating the ranking.
SELECT
    geography,
    age_group,
    isactivemember,
    numofproducts,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN exited = 1 THEN 1 ELSE 0 END) AS customer_churn,
    ROUND(SUM(CASE WHEN exited = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate
FROM bank_churn
GROUP BY geography, age_group, isactivemember, numofproducts
HAVING COUNT(*) >= 50
ORDER BY churn_rate DESC;
