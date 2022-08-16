use apple_store;

/*Question 1:What are the different genres?*/
select prime_genre from apple_store.applestore
group by prime_genre;

/*Question 2:Which is the genre with the most apps rated?*/
select rating_count_tot, prime_genre from apple_store.applestore
order by rating_count_tot DESC;
/*THE GENRE WITH THE MOST RATED SOCIAL NETWORKING*/


/*Question 3: Which is the genre with most apps?*/
select count(track_name), prime_genre from applestore
group by prime_genre;
/*GAMES IS THE GENRE WITH MOST APPS*/


/*Question 4: Which is the one with least?*/
select count(track_name), prime_genre from applestore
group by prime_genre
order by count(track_name) asc
limit 1;
/*MEDICAL IS THE GENRE WITH THE LEAST*/

/*Question 5: Find the top 10 apps most rated?*/
select rating_count_tot, track_name from apple_store.applestore
order by rating_count_tot DESC
limit 10;
/*THE TOP TEN APPS ARE:- 1) Facebook,(2) Pandora,(3)Pinterest, (4) Bible, (5)Angry Birds,
 (6)Fruity Ninja Classic,(7) Solitaire,(8) Pacman,(9) Calorie counter &Diet tracking, (10) The weather channel*/
 
 
/*Question 6: Find the top 10 apps best rated by users.*/
select user_rating, track_name from apple_store.applestore
order by user_rating DESC
/* Sodoku+, TurboScanPro, Plants vs. zombies, Learn to speak spanish, Plants vs, zombiesHD, the photographer's ephemeris
Learn English quickly, Kumaki Calender, Domino's pizza usa, Daily audio bible app*/

/*Question 7: Take a look at the data you retrieved in question 5. Give some insights?
The best rated apps are apps used by a lot of people within most age groups at any given time of the day,
and most of the apps if not all are free apps(social media apps and games*/

/*Question 8: Take a look at the data you retrieved in question 6. Give some insights
This are user friendly apps that stimulates the brain and have good interface, they are apps used by an older
subset of people who find them engaging*/


/*Question 9: Now compare the data from questions 5 and 6. What do you see
The differences in the categories of apps.*/

/*Question 10: How could you take the top 3 regarding both user ratings and number of votes
Select track_name, rating_count_tot/user_rating from apple_store
order by rating_count_tot/user_rating DESC,
limit 3;*/
