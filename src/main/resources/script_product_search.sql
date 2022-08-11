select product_name from netology.ORDERS
join netology.CUSTOMERS c on c.id = netology.ORDERS.customer_id
where upper(c.name) = upper(:name);