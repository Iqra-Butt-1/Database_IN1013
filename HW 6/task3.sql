SELECT first_name ,surname
FROM restStaff
INNER JOIN restBill
ON restStaff.staff_no = restBill.waiter_no
WHERE cust_name="Tanya Singh";


SELECT room_date
FROM restRoom_management
INNER JOIN restStaff
ON restRoom_management.headwaiter = restStaff.headwaiter
WHERE restStaff.first_name = "Charles" AND room_name= "Green"
AND room_date>=160000 AND room_date<170000;


SELECT cust_name, bill_total, first_name
FROM restBill
INNER JOIN restStaff
ON restBill.waiter_no= restStaff.staff_no
ORDER BY bill_total DESC


SELECT first_name, surname
FROM restStaff
INNER JOIN restBill
ON restStaff.staff_no= restBill.waiter_no
WHERE bill_no= 00014 OR bill_no=00017

SELECT first_name, surname
FROM restStaff
INNER JOIN restRoom_management
ON restStaff.staff_no= restRoom_management.headwaiter
WHERE room_name= "Blue" AND room_date = 160312