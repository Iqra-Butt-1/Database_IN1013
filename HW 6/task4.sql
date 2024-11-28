SELECT cust_name
FROM restBill
 WHERE bill_total>450.00 AND waiter_no IN
    (SELECT staff_no 
    FROM restStaff
    WHERE first_name="Charles");
    
SELECT cust_name
FROM restBill
WHERE bill_total IN
    (SELECT min(bill_total)
     FROM restBill);

SELECT first_name, surname
FROM restStaff
WHERE staff_no NOT IN
   (SELECT waiter_no 
    FROM restBill);
    
SELECT cust_name, first_name, surname, room_name
FROM restBill
JOIN restStaff
ON restStaff.staff_no= restBill.waiter_no
JOIN restRest_table
ON restRest_table.table_no = restBill.table_no
WHERE bill_total= (SELECT MAX(bill_total) FROM restBill)

                     