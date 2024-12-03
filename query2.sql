/*Calculate the total revenue generated from pizza sales./*--817860.5
/* total revenue==quantity * price
/* quantity is in order_details and the price in the pizzas so use the join
/* apply join on the comman from the both tables pizza and the order_details

select 
(order_details.quantity * pizzas.price) as total_sales
from order_details join pizzas
on pizzas.pizza_id=order_details.pizza_id;

SELECT 
    round(sum(order_details.quantity * pizzas.price),2) AS total_sales
FROM
    order_details
        JOIN
    pizzas ON pizzas.pizza_id = order_details.pizza_id;