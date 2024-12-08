CREATE VIEW samsBill
AS (SELECT first_name, surname, bill_date, cust_name, bill_total
FROM restBill
JOIN restStaff ON restStaff.staff_no = restBill.waiter_no
WHERE first_name= "Sam" AND surname="Pitt");

SELECT * FROM samsBill;

SELECT bill_total
FROM samsBill
WHERE bill_total>400;

