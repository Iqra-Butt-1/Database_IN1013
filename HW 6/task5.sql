
SELECT  DISTINCT first_name, surname, bill_date, COUNT(*) 
FROM restStaff
INNER JOIN restBill ON restStaff.staff_no=restBill.waiter_no
GROUP BY first_name, surname, bill_date
HAVING COUNT(bill_date)>= 2

SELECT room_name, COUNT(*)
FROM restRest_table
where no_of_seats>6
GROUP BY room_name

SELECT room_name, SUM(bill_total) AS total_bill_amount
FROM restBill
JOIN restRest_table ON restRest_table.table_no = restBill.table_no
GROUP BY restRest_table.room_name


SELECT DISTINCT cust_name
FROM restBill
GROUP BY cust_name
HAVING AVG(bill_total)>400

SELECT  DISTINCT first_name, surname, COUNT(*) 
FROM restStaff
INNER JOIN restBill ON restStaff.staff_no=restBill.waiter_no
GROUP BY first_name, surname, bill_date
HAVING COUNT(bill_date)>= 3