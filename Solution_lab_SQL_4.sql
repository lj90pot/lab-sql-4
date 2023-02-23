/*LUIS*/
use sakila;

/*----------------*/
/*----------------*/

/* -Q1 */
select title, rating from film;
/*in case we need all the different ratings*/
select distinct rating from film; 

/* -Q2 */
select title, release_year from film;
/*in case we need all the different Release_year*/
select distinct release_year from film; 

/* -Q3 */
select title from film where title regexp 'ARMAGEDDON';
select title from film where title like '%ARMAGEDDON%';

/* -Q4 */
select title from film where title regexp 'APOLLO';

/* -Q5 */
select title from film where title regexp 'APOLLO$';

/* -Q6 */
select title from film where title regexp 'DATE';

/* -Q7 */
select length(title) title_len, title 
from film 
order by title_len desc 
limit 10;

/* -Q8 */
select length, title from film
order by length desc
limit 10; 

/* -Q9 */
select count(*) as films_w_Behind_Scences 
from film 
where special_features regexp 'Behind the Scenes';

/* -Q10 */
select * from film
order by release_year, title;