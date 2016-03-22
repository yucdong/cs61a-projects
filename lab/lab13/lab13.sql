.read data.sql

-- Q1
CREATE TABLE flight_costs as
with
  cost(day, pp, p, cur) as (
    select 1, 0, 0, 20 union
    select 2, 0, 20, 30 union
    select 3, 20, 30, 40 union
    select day + 1, p, cur, (cur + p) / 2 + 5 * ((day + 1) % 7) FROM cost WHERE day >= 3 AND day < 25 
  )
  SELECT day, cur FROM cost ORDER BY day;

-- Q2
CREATE TABLE schedule as
with
  plan(route, relay, src, dest, cost) as (
    select departure || ", " || arrival, 1, departure, arrival, price FROM flights union
    select p.route || ", " || f.arrival, p.relay + 1, p.src, f.arrival, p.cost + f.price FROM plan as p, flights as f WHERE p.dest = f.departure and p.relay <= 1
  )
  SELECT route, cost FROM plan WHERE src = 'SFO' and dest = 'PDX' ORDER BY cost;


-- Q3
CREATE TABLE shopping_cart as
  -- REPLACE THIS LINE
  SELECT 'YOUR CODE HERE';


-- Q4
CREATE TABLE number_of_options as
  -- REPLACE THIS LINE
  SELECT 'YOUR CODE HERE';


-- Q5
CREATE TABLE calories as
  -- REPLACE THIS LINE
  SELECT 'YOUR CODE HERE';


-- Q6
CREATE TABLE healthiest_meats as
  -- REPLACE THIS LINE
  SELECT 'YOUR CODE HERE';


-- Q7
CREATE TABLE average_prices as
  -- REPLACE THIS LINE
  SELECT 'YOUR CODE HERE';


-- Q8
CREATE TABLE lowest_prices as
  -- REPLACE THIS LINE
  SELECT 'YOUR CODE HERE';


-- Q9
CREATE TABLE shopping_list as
  -- REPLACE THIS LINE
  SELECT 'YOUR CODE HERE';


-- Q10
CREATE TABLE total_bandwidth as
  -- REPLACE THIS LINE
  SELECT 'YOUR CODE HERE';

