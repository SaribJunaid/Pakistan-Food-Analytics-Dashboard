SELECT TOP 10 restaurant_name, rating, num_reviews
FROM cleaned_food_data
ORDER BY rating DESC, num_reviews DESC;

SELECT * FROM cleaned_food_data
WHERE city = 'Karachi';

DELETE FROM cleaned_food_data
WHERE rating IS NULL OR num_reviews IS NULL;

SELECT * FROM cleaned_food_data
WHERE city = 'Karachi';

select top 10 restaurant_name, rating, num_reviews,city
from cleaned_food_data
order by num_reviews desc , rating desc

select top 10 restaurant_name, rating, num_reviews,city
from cleaned_food_data
where city = 'Karachi'
order by num_reviews desc , rating desc

select top 10 restaurant_name, rating, num_reviews,city
from cleaned_food_data
where city = 'Lahore'
order by num_reviews desc , rating desc

select top 10 restaurant_name, rating, num_reviews,city
from cleaned_food_data
where city = 'Peshawar'
order by num_reviews desc , rating desc

select top 10 restaurant_name, rating, num_reviews,city
from cleaned_food_data
where city = 'Quetta'
order by num_reviews desc , rating desc

select top 10 restaurant_name, rating, num_reviews,city
from cleaned_food_data
where city = 'Islamabad'
order by num_reviews desc , rating desc

SELECT city, AVG(rating) AS avg_rating
FROM cleaned_food_data
GROUP BY city
ORDER BY avg_rating DESC;

SELECT city, SUM(num_reviews) AS total_reviews
FROM cleaned_food_data
GROUP BY city
ORDER BY total_reviews DESC;

SELECT city, COUNT(*) AS total_restaurants
FROM cleaned_food_data
GROUP BY city
ORDER BY total_restaurants DESC;

SELECT restaurant_name, city, rating, num_reviews
FROM cleaned_food_data
WHERE rating >= 4.5
ORDER BY rating DESC, num_reviews DESC;

SELECT TOP 10 restaurant_name, city, rating, num_reviews
FROM cleaned_food_data
ORDER BY rating ASC, num_reviews DESC;

SELECT restaurant_name, city, rating, num_reviews
FROM cleaned_food_data AS a
WHERE num_reviews = (
    SELECT MAX(num_reviews)
    FROM cleaned_food_data AS b
    WHERE b.city = a.city
);

SELECT restaurant_name, COUNT(DISTINCT city) AS city_count
FROM cleaned_food_data
GROUP BY restaurant_name
HAVING COUNT(DISTINCT city) > 1;

SELECT 
    city,
    CASE 
        WHEN rating >= 4.5 THEN 'Excellent (4.5 - 5)'
        WHEN rating >= 4.0 THEN 'Good (4.0 - 4.4)'
        WHEN rating >= 3.5 THEN 'Average (3.5 - 3.9)'
        ELSE 'Below Average (< 3.5)'
    END AS rating_category,
    COUNT(*) AS total_restaurants
FROM cleaned_food_data
GROUP BY city, 
         CASE 
            WHEN rating >= 4.5 THEN 'Excellent (4.5 - 5)'
            WHEN rating >= 4.0 THEN 'Good (4.0 - 4.4)'
            WHEN rating >= 3.5 THEN 'Average (3.5 - 3.9)'
            ELSE 'Below Average (< 3.5)'
         END
ORDER BY city, rating_category;









