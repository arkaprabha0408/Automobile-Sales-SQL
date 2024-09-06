SELECT  
    EXTRACT(YEAR FROM s.sale_date) AS sales_year, 
    EXTRACT(MONTH FROM s.sale_date) AS sales_month, 
    TO_CHAR(s.sale_date, 'WW') AS sales_week, 
    b.brand_name, 
    c.gender, 
    CASE 
        WHEN c.income >= 0 AND c.income < 5000000 THEN '0-50lakh' 
        WHEN c.income >= 5000000 AND c.income < 10000000 THEN '50lakh-100lakh' 
        ELSE '100lakh+' 
    END AS income_range, 
    COUNT(*) AS sales_count 
FROM  
    sales s 
JOIN  
    customer c ON s.customer_id = c.customer_id 
JOIN  
    Model m ON s.vehicle_id = m.vehicle_id 
JOIN  
    brand b ON m.brand_id = b.brand_id 
WHERE  
    s.sale_date >= ADD_MONTHS(TRUNC(SYSDATE, 'YYYY'), -36) -- Sales in the last 3 years 
GROUP BY  
    EXTRACT(YEAR FROM s.sale_date), 
    EXTRACT(MONTH FROM s.sale_date), 
    TO_CHAR(s.sale_date, 'WW'), 
    b.brand_name, 
    c.gender, 
    CASE 
        WHEN c.income >= 0 AND c.income < 5000000 THEN '0-50lakh' 
        WHEN c.income >= 5000000 AND c.income < 10000000 THEN '50lakh-100lakh' 
        ELSE '100lakh+' 
    END 
ORDER BY  
    sales_year, sales_month, sales_week, brand_name, gender, income_range;




SELECT b.brand_name, SUM(s.price) AS total_sales_amount
FROM sales s
JOIN brand b ON s.brand_id = b.brand_id
WHERE s.sale_date >= TRUNC(SYSDATE, 'YYYY') - INTERVAL '1' YEAR -- Sales in the last year
GROUP BY b.brand_name
ORDER BY total_sales_amount DESC
FETCH FIRST 2 ROWS ONLY;

SELECT EXTRACT(MONTH FROM s.sale_date) AS sales_month,
       COUNT(*) AS total_sales
FROM sales s
JOIN Model m ON s.model_name = m.model_name
WHERE m.style = 'Convertible'
GROUP BY EXTRACT(MONTH FROM s.sale_date)
ORDER BY total_sales DESC;





SELECT v.dealer_id, 
       AVG(DATE_DIFF(SYSDATE, v.entry_date, 'DAY')) AS avg_days_in_inventory
FROM vehicle v
GROUP BY v.dealer_id
ORDER BY avg_days_in_inventory DESC;

