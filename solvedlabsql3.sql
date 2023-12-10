SELECT
  c.name AS category,
  COUNT(f.film_id) AS number_of_films
FROM
  category c
JOIN
  film_category fc ON c.category_id = fc.category_id
JOIN
  film f ON fc.film_id = f.film_id
GROUP BY
  c.name
ORDER BY
  number_of_films DESC;
  
SELECT
  s.store_id,
  c.city,
  co.country
FROM
  store s
JOIN
  address a ON s.address_id = a.address_id
JOIN
  city c ON a.city_id = c.city_id
JOIN
  country co ON c.country_id = co.country_id;
  

SELECT
  s.store_id,
  SUM(p.amount) AS total_revenue
FROM
  store s
JOIN
  staff st ON s.manager_staff_id = st.staff_id
JOIN
  payment p ON st.staff_id = p.staff_id
JOIN
  rental r ON p.rental_id = r.rental_id
JOIN
  inventory i ON r.inventory_id = i.inventory_id
GROUP BY
  s.store_id;
  
SELECT
  c.name AS category,
  AVG(f.length) AS average_running_time
FROM
  category c
JOIN
  film_category fc ON c.category_id = fc.category_id
JOIN
  film f ON fc.film_id = f.film_id
GROUP BY
  c.name;




  
  

