use sales;

select count(*) from sales.customers;

select count(*) from sales.date;
select count(distinct(sales.date.date)) from sales.date;

select count(*) from sales.markets;

select count(*) from sales.products;

select count(*) from sales.transactions;

select * from sales.transactions where market_code='Mark001';
select count(*) from sales.transactions where market_code='Mark001';

select *, (sales.transactions.sales_amount*80) as Inr
from sales.transactions
where currency='USD';

select * from sales.transactions where year(order_date)=2020;

select sum(sales.transactions.sales_amount)
from sales.transactions inner join sales.date
on sales.transactions.order_date = sales.date.date
where sales.date.year=2020;

select sum(sales.transactions.sales_amount)
from sales.transactions
where year(sales.transactions.order_date)=2020;

select sum(sales.transactions.sales_amount)
from sales.transactions
where year(order_date)=2020 and market_code='Mark001';

select count(distinct(sales.transactions.product_code))
from sales.transactions
where sales.transactions.market_code='Mark001';

select * from sales.transactions
where sales.transactions.sales_amount<=0;

select distinct(sales.transactions.currency) from sales.transactions;

select distinct(sales.products.product_type) from sales.products;

select sum(sales.transactions.sales_amount) from sales.transactions
where sales.transactions.order_date between '2018-01-01' and '2018-01-31';

select sum(sales.transactions.sales_amount) as "Total Revenue"
from sales.transactions
inner join sales.date
on sales.transactions.order_date = sales.date.date
where sales.date.year=2020
and sales.transactions.market_code="Mark001";
