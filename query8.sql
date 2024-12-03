/* -Group the orders by date and calculate the average number of pizzas ordered per day.*/
/* 136 pizzas per days it is the average count */


select orders.order_date,count(order_details.quantity)
from orders join order_details
on orders.order_id=order_details.order_id
group by orders.order_date;

/* take these query as the  sub query and find out the average*/
SELECT 
    ROUND(AVG(quantity), 0) as avg_pizzas_order_perday
FROM
    (SELECT 
        orders.order_date, COUNT(order_details.quantity) AS quantity
    FROM
        orders
    JOIN order_details ON orders.order_id = order_details.order_id
    GROUP BY orders.order_date) AS order_quantity;