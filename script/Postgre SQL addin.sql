


Create table sales (
Order_Line int primary key,
Order_ID varchar,
Bar_code varchar,
Order_Date date,
Ship_Date date,
Ship_Mode varchar,
Customer_ID varchar,
Product_ID varchar,
Sales numeric,
Quantity int,
Discount numeric,
Profit numeric
);

COPY sales from 'C:\Program Files\PostgreSQL\18\data\dataset\2023sales.csv'
delimiter ',' csv header;
select*from sales