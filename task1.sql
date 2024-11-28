SELECT bill_date, bill_total
FROM restBill
WHERE cust_name = 'Bob Crow'


SELECT DISTINCT cust_name
FROM restBill
WHERE cust_name LIKE '%Smith%'
ORDER BY cust_name DESC

SELECT DISTINCT cust_name
FROM restBill
WHERE cust_name LIKE "% C%";

SELECT first_name, surname
FROM restStaff

SELECT *
FROM restBill
WHERE bill_date>= 160200 AND bill_date< 160300

SELECT DISTINCT bill_date
FROM restBill
WHERE bill_date>= 150100 AND bill_date<= 151231
