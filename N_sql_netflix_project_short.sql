create database netflix_db;

-- data set : https://github.com/najirh/netflix_sql_project

CREATE TABLE netflix
(
	show_id	VARCHAR(5),
	type    VARCHAR(10),
	title	VARCHAR(250),
	director VARCHAR(550),
	casts	VARCHAR(1050),
	country	VARCHAR(550),
	date_added	date,
	release_year	INT,
	rating	VARCHAR(15),
	duration	VARCHAR(15),
	listed_in	VARCHAR(250),
	description VARCHAR(550)
);

select * from netflix;

-- 1. Count the number of Movies vs TV Shows

select type, count(type) as No_of_Movies_and_TV_Shows from netflix
group by 1;


-- 2. Find the most avg rating for movies and TV shows:

select rating  from netflix;

SELECT rating, COUNT(*) AS rating_count
FROM netflix
GROUP BY rating
ORDER BY rating_count DESC
LIMIT 1;

-- 3. List all movies released in a specific year (e.g., 2020):

select  * from netflix
where type = 'Movie'
and   release_year = '2021';

-- 4. Find the top 5 countries with the most content on Netflix
select  * from netflix;
select  country , count(*) as No_content from netflix
group by 1
order by 2 desc limit 5;

-- 5. Identify the longest movie:
select  * from netflix;

SELECT title, duration
FROM netflix
ORDER BY duration DESC
LIMIT 10;

-- 6. Find content added in the last 5 years
select  * from netflix;


-- 7. Find all the movies/TV shows by director 'Rajiv Chilaka'!
select  * from netflix
where director= 'Raja Gosnell';

-- 8. List all TV shows with more than 5 seasons
select  * from netflix
where duration > '3 Season';

-- 9. Count the number of content items in each genre

select  type, count(*) as No_content_genre from netflix
group by 1;

-- 10. Find each year and the average numbers of content release by India on netflix. 
-- return top 5 year with highest avg content release !


-- 11. List all movies that are documentaries
 select  * from netflix
 where listed_in ='Documentaries';
 
 -- 12. Find all content without a director
 select  * from netflix
 where director is null;
 
 -- 13. Find how many movies actor 'Salman Khan' appeared in last 10 years!
  select casts, count(*)as salman_movies  from netflix
  where casts  = 'Mayur More'
  group by casts;
  
  -- 14. Find the top 10 actors who have appeared in the highest number of movies produced in India.
 select  * from netflix;
 -- data insuffcuent

 
 
 
 