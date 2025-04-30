/* Diiferent kinds of date manipulation*/
select year(order_date) as order_year, sum(sales_amount) as total_sales, count(distinct customer_key), sum(quantity)
from gold.fact_sales
where order_date is not null
group by year(order_date)
order by year(order_date);

select month(order_date) as order_year, sum(sales_amount) as total_sales, count(distinct customer_key), sum(quantity)
from gold.fact_sales
where order_date is not null
group by month(order_date)
order by month(order_date);

select year(order_date),month(order_date) as order_month, sum(sales_amount) as total_sales, count(distinct customer_key), sum(quantity)
from gold.fact_sales
where order_date is not null
group by year(order_date), month(order_date)
order by year(order_date), month(order_date);

select Datetrunc(month, order_date),
sum(sales_amount) as total_sales, count(distinct customer_key), sum(quantity)
from gold.fact_sales
where order_date is not null
group by datetrunc(month, order_date)
order by datetrunc(month, order_date);

select format(order_date, 'yyyy-MMM'), --MM displays month in numbers, MMM displays in words but MMM no sorting in months
sum(sales_amount) as total_sales, count(distinct customer_key), sum(quantity)
from gold.fact_sales
where order_date is not null
group by format(order_date, 'yyyy-MMM')
order by format(order_date, 'yyyy-MMM');
