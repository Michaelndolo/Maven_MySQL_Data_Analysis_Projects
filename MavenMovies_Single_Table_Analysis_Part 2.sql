-- THE CASE STATEMENT
SELECT 
  first_name, 
  last_name,
  CASE 
    WHEN store_id = 1 AND active = 1 THEN 'Store 1 active'
    WHEN store_id = 1 AND active = 0 THEN 'Store 1 inactive'
    WHEN store_id = 2 AND active = 1 THEN 'Store 2 active'
    WHEN store_id = 2 AND active = 0 THEN 'Store 2 inactive'
    ELSE 'Oh no!'
END AS store_and_status
FROM customer;

-- COUNT & CASE STATEMENT
SELECT store_id,
  COUNT(CASE WHEN active = 1 THEN customer_id ELSE NULL END) AS active,
  COUNT(CASE WHEN active = 0 THEN customer_id ELSE NULL END) AS inactive
FROM customer
GROUP BY store_id;