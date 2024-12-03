/*-Determine the distribution of orders by hour of the day.*/

select * from orders;

/* we have the distribution in hours so select the order_time in the hrs*/
select hour(order_time) ,count(order_id) from orders
group by hour(order_time);

/* give the column name */
SELECT 
    HOUR(order_time) AS hour, COUNT(order_id) AS order_time
FROM
    orders
GROUP BY HOUR(order_time);