/* 
Justin Yates 
Lab 2
*/

/* 1. */
/*
A WHERE clause is able to refine returned values from a SELECT statement. This 
ensures you data is constrained, allowing you to filter rows for data that
is relevant to your query. You can utilize WHERE statements with complex expressions
to further narrow your results.
*/

/* 2. */
SELECT * FROM AP.invoices
WHERE vendor_id = 34;

/* 3. */
SELECT invoice_id
FROM AP.invoices
WHERE invoice_total = 356.48;

/* 4. */
SELECT * FROM AP.invoices
WHERE invoice_id
IN (81, 82, 90);

/* 5. */
SELECT * FROM AP.invoices
WHERE vendor_id <= 44;

/* 6. */
SELECT * FROM AP.invoices
WHERE credit_total != 0;

/* 7. */
SELECT * FROM AP.invoices
WHERE TO_DATE(invoice_date, 'DD-Month-YY') = TO_DATE('01-May-14', 'DD-Month-YY');

/* 8. */
SELECT * FROM AP.invoices
WHERE payment_total
BETWEEN 100 AND 115;

/* 9. */
SELECT * FROM AP.invoices
WHERE invoice_date
BETWEEN TO_DATE('01-May-14', 'DD-Month-YY')
AND
TO_DATE('08-May-14', 'DD-Month-YY');

/* 10. */
SELECT * FROM AP.invoices
WHERE invoice_number
LIKE 'P%';

/* 11. */
SELECT * FROM AP.invoices
WHERE invoice_number
LIKE 'P-3%';

/* 12. */
SELECT * FROM AP.invoices
WHERE invoice_number
LIKE '%-X';

/* 13. */
SELECT * FROM AP.invoices
WHERE invoice_number
LIKE '%11%'
AND invoice_number NOT LIKE '1%'
AND invoice_number NOT LIKE '%1';

/* 14. */
SELECT * FROM AP.invoices
WHERE SUBSTR(invoice_number, 2, 1) = '0'
AND SUBSTR(invoice_number, 4, 1) = '3';

/* 15. */
SELECT * FROM AP.invoices
WHERE payment_date IS NULL
FETCH FIRST 10 ROWS ONLY;

/* 16. */
SELECT * FROM AP.invoices
WHERE payment_date IS NOT NULL
FETCH FIRST 10 ROWS ONLY;

/* 17. */
SELECT * FROM AP.invoices
WHERE payment_total = 0
AND invoice_total > 100;

/* 18. */
SELECT * FROM AP.invoices
WHERE payment_total
BETWEEN 0 AND 25
OR
invoice_total > 100
FETCH FIRST 10 ROWS ONLY;

/* 19. */
SELECT * FROM AP.invoices
WHERE terms_id 
NOT IN (1,2,3,4);

/* 20. */
SELECT * FROM AP.invoices
WHERE (invoice_date = TO_DATE('01-MAY-2014', 'DD-Month-YYYY') 
OR invoice_date = TO_DATE('17-MAY-2014', 'DD-Month-YYYY') AND payment_total = 0); 