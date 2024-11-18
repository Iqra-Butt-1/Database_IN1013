select sum (bill_total) AS "Income"
from restBill


select sum (bill_total) AS " Feb Income"
from restBill
where bill_date>= 160200 and bill_date<160300


select avg(bill_total)
from restBill
where table_no=002

select min(no_of_seats) as "Min", max(no_of_seats) as "Max" ,avg(no_of_seats) as "Average"
from restRest_table
where room_name= 'Blue'

SELECT DISTINCT count(table_no)
from restBill
where waiter_no=004 or waiter_no=002