create table products(
product_id serial primary key,
name varchar(50) not null,
sku_code char(8) unique not null,
price numeric(10,2) default 0 check(price >= 0),
stock_quantity int check(stock_quantity >= 0),
is_available boolean default TRUE,
category text not null,
added_on date default current_date,
last_update timestamp default now()
);

insert into products (name, sku_code,price, stock_quantity, is_available,category)
values
('wireless mouse','12345678','899.78',50, TRUE, 'Electronics'),
('wireless keyboard','12345679','349.78',40, TRUE, 'Electronics'),
('wireless hendfree','43345678','100.78',70, TRUE, 'Electronics'),
('wireless mo','1234f636','999.78',50, TRUE, 'kitchen');

INSERT INTO products (name, sku_code, price, stock_quantity, is_available, category)
VALUES
('Bluetooth Speaker', '87654321', 2499.99, 25, TRUE, 'Electronics'),
('Gaming Mouse', '87654322', 1899.50, 35, TRUE, 'Electronics'),
('Office Chair', '87654323', 12500.00, 10, TRUE, 'Furniture'),
('Water Bottle', '87654324', 450.00, 80, TRUE, 'Kitchen'),
('LED Desk Lamp', '87654325', 1599.75, 20, TRUE, 'Home Decor'),
('Cooking Pan', 'CP123456', 1299.50, 30, TRUE, 'Kitchen'),
('Cricket Bat', 'CB123456', 3500.00, 15, TRUE, 'Sports'),
('School Bag', 'SB123456', 2200.75, 45, TRUE, 'Bags'),
('Novel Book', 'NB123456', 650.00, 60, TRUE, 'Books'),
('Notebook Set', '87654326', 299.99, 100, FALSE, 'Stationery');

-- show the name and price of all products 
select name,price from products;

-- show all products where  the category is 'Electronics'
select * from products where category = 'Electronics';

-- group products by category shoiw each category once 
select category from products group by category;


-- show categories that have more than 1 product (use after groupby)
select category, count(*) from products group by category having count(*) > 1;

-- show al products stored by price in ascending order 
select * from products order by price des ;


-- show only first products from tabel 
select * from products limit 3;

select name as Item_name, prive
select * from products;
















