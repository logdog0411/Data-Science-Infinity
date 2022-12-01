--Question 1: 38506

select 
  count(customer_id)
  
from 
  grocery_db.transactions;
  

--Question 2: id 711

select
  customer_id,
  distance_from_store
  
from
  grocery_db.customer_details
  
where distance_from_store > 0
  
order by distance_from_store desc limit 1;


--Question 3: 485 F 380 m 5 unk

select 
  count (distinct customer_id),
  gender
  
from 
  grocery_db.customer_details
  
group by gender;


-- Question 4: 

select
  sum(a.sales_cost) as sales,
  b.product_area_name as area
  
from
  grocery_db.transactions a
  inner join grocery_db.product_areas b
  on a.product_area_id=b.product_area_id
  
group by area
order by sales desc;

-- Question 5

select distinct
  a.customer_id,
  b.customer_loyalty_score  
from
  grocery_db.customer_details a
  left join grocery_db.loyalty_scores b
  on a.customer_id=b.customer_id
  
where b.customer_loyalty_score is null;
  
