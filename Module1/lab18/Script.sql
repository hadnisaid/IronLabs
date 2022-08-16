use apple_store;
/*Question 1:What are the different genres?*/
select prime_genre from apple_store.applestore
group by prime_genre;

/*Question 2:Which is the genre with the most apps rated?*/
select rating_count_tot, prime_genre from apple_store.applestore
order by rating_count_tot DESC;

/*Question 3: Which is the genre with most apps?*/
select count(track_name), prime_genre from applestore
group by prime_genre;


/*Question 4: Which is the one with least?*/
select count(track_name), prime_genre from applestore
group by prime_genre
order by count(track_name) asc
limit 1;

/*Question 5: Find the top 10 apps most rated?*/
select rating_count_tot, track_name from apple_store.applestore
order by rating_count_tot DESC
limit 10;

/*Question 6: Find the top 10 apps best rated by users.*/
select user_rating, track_name from apple_store.applestore
order by user_rating DESC

/*Question 7: Take a look at the data you retrieved in question 5. Give some insights*/
/*facebook is the first rated even if it not a fi.......*/

/*Question 8: Take a look at the data you retrieved in question 6. Give some insights*/
/*users appreciate many apps*/
/*Question 9: Now compare the data from questions 5 and 6. What do you see*/

/*Question 10: How could you take the top 3 regarding both user ratings and number of votes?*/
select track_name, rating_count_tot/user_rating from apple_store
select track_name, rating_count_tot/user_rating from apple_store
order by rating_count_tot/user_rating DESC;
