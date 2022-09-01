SELECT * FROM classicmodels.students where name LIKE "Be%";

SELECT * FROM classicmodels.students where last_name LIKE "%ss%i";

--------------------------------

SELECT * FROM classicmodels.payments;

SELECT COUNT(customerNumber)
FROM payments
WHERE customerNumber = 103;


SELECT AVG(amount)
FROM payments
where customerNumber = 103;

--------------------------------

select * from customers where customerNumber = 
(
SELECT customerNumber from payments where amount = (SELECT MAX(amount) FROM payments)
);


--------------------------
SELECT * FROM classicmodels.customers where customerNumber>150 AND customerNumber<200  limit 50;
