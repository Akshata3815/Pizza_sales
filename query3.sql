/*3--Identify the highest-priced pizza.*/
/*select from the pizza type and the pizzas table ,pizza_types and the pizzas contain the same column id*/

/* it will give the pizza type and their price*/
select pizza_types.name,pizzas.price
from pizza_types join pizzas
on pizza_types.pizza_type_id =pizzas.pizza_type_id
order by pizzas.price;

/* make them in the desending order and find the highest price pizza
SELECT 
    pizza_types.name, pizzas.price
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
ORDER BY pizzas.price DESC
LIMIT 1;

/*Identify the most common pizza size ordered.*/
/* in the order_detail and the pizzas in these two tables the size and the qauntity are present

select pizzas.size , count(order_details.order_details_id)
from pizzas join order_details
on pizzas.pizza_id = order_details.pizza_id
group by pizzas.size;

/* find the count in the desending order*/
select pizzas.size , count(order_details.order_details_id) as order_count
from pizzas join order_details
on pizzas.pizza_id = order_details.pizza_id
group by pizzas.size order by order_count desc;
