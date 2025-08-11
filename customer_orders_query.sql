select * from customer_orders_table

select *, row_number() over (partition by ordernumber, ordertotal, orderdate
order by orderdate) as row_number
from customer_orders_table

--checking for missing values
select *, row_number() over (partition by ordernumber, ordertotal, orderdate
order by orderdate) as row_number
from customer_orders_table
where ordernumber is null

select * from 
customer_shipping_table

--joining both the tables 
select co.*, cs.CustState
from customer_orders_table co
inner join customer_shipping_table cs 
on cs.OrderNum = co.ordernumber
