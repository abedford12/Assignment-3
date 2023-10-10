create database Assignment3;
use Assignment3;
show tables;

select merchants.name, products.name 
from merchants, products, sell
where merchants.mid=sell.mid and products.pid=sell.pid and quantity_available=0;

select products.name, products.description
from products, sell
where products.pid=sell.pid and quantity_available>0;

select customers.fullname 
from customers, place, contain, products 
where customers.cid=place.cid and place.oid=contain.oid and contain.pid=products.pid and products.name='SATA';

select products.name, products.category
from products, merchants, sell
where products.pid=sell.pid and merchants.mid=sell.mid and merchants.name='HP' and products.category='Networking';

select customers.fullname, products.name, sell.price, merchants.name
from customers, products, sell, place, contain, merchants
where customers.fullname='Uriel Whitney' and products.pid=sell.pid and customers.cid=place.cid and place.oid=contain.oid and 
products.pid=contain.pid and sell.pid=contain.pid and sell.mid=merchants.mid and merchants.name='Acer';

select merchants.name, place.order_date
from merchants, sell, contain, place
where merchants.mid=sell.mid and sell.pid=contain.pid and contain.oid=place.oid
group by place.order_date, merchants.name;

select orders.shipping_method, orders.shipping_cost
from orders
where orders.shipping_cost<=orders.shipping_cost;

select products.category, merchants.name
from products, merchants, sell
where products.pid=sell.pid and merchants.mid=sell.mid and sell.price>=sell.price;
