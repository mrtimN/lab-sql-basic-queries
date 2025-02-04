use sakila;
show tables;

select * from actor;
select * from film;
select * from customer;

select title from film;
select name as language from language;
select first_name from staff;

select release_year from film group by release_year;

select count(store_id) as number_of_stores from store;
select count(staff_id) as number_of_employees from staff;
select count(inventory_id) as available_movies from rental where return_date is not null;
select count(inventory_id) as rented_movies from rental where return_date is null;
select distinct count(last_name) as distinct_last_name from actor;

select title from film order by length desc limit 10;

select * from actor where first_name='SCARLETT';

select * from film where title like '%ARMAGEDDON%' and length > 100;
select count(film_id) from film where special_features like '%Behind the Scenes%';