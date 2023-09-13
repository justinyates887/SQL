/* Justin Yates */
/* Lab 3 */

/* 1. */
SELECT * FROM OM.customers
ORDER BY customer_last_name
FETCH FIRST 10 ROWS ONLY;

/* 2. */
SELECT * FROM OM.customers
ORDER BY customer_last_name DESC
FETCH FIRST 10 ROWS ONLY;

/* 3. */
SELECT customer_last_name, customer_first_name
FROM OM.customers
ORDER BY customer_last_name ASC, customer_first_name DESC
FETCH FIRST 10 ROWS ONLY;

/* 4. ??? */
SELECT * FROM OM.customers
ORDER BY 1 DESC
FETCH FIRST 10 ROWS ONLY;

/* 5. */
SELECT
customer_first_name AS FIRSTNAME,
customer_last_name AS "Last Name",
customer_city AS "'City'",
customer_state AS "*Cust-State*"
FROM OM.customers
FETCH FIRST 4 ROWS ONLY;

/* 6. */
SELECT DISTINCT customer_state
FROM OM.customers
ORDER BY customer_state;

/* 7. */
SELECT DISTINCT customer_fax
FROM OM.customers
ORDER BY customer_fax DESC;

/* 8. */
SELECT * FROM OM.customers
FETCH FIRST 4 ROWS ONLY;

/* 9. */
SELECT title 
FROM OM.items
WHERE title LIKE '%Road%'
OR title LIKE '%road%'; 
//not best practice

/* 10. */
SELECT title, unit_price
FROM OM.items
WHERE unit_price LIKE '%.%'
ORDER BY unit_price DESC, title DESC;

/* 11. */
SELECT title, unit_price
FROM OM.items
WHERE unit_price NOT LIKE '%.%'
ORDER BY unit_price ASC, title DESC;

/* 12. */
SELECT order_id, order_qty
FROM OM.order_details
WHERE order_qty >= 2
ORDER BY order_id;

/* 13. */
SELECT order_id
FROM OM.order_details
WHERE MOD(order_id, 13) = 0;

/* 14. */
SELECT order_id, shipped_date
FROM OM.orders
WHERE shipped_date IS NULL;

/* 15. */
SELECT order_id,
       (shipped_date - order_date) AS "Number of days to ship"
FROM OM.orders
WHERE (shipped_date - order_date) >= 25
ORDER BY "Number of days to ship" DESC;