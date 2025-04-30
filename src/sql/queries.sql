-- queries.sql
-- Complete each mission by writing your SQL query below the instructions.
-- Don't forget to end each query with a semicolon ;

SELECT * FROM regions;
SELECT * FROM species;
SELECT * FROM climate;
SELECT * FROM observations;



SELECT region_id, 
COUNT(DISTINCT species_id) AS presencia_especies_por_region
FROM observations
GROUP BY region_id
ORDER BY presencia_especies_por_region;



SELECT strftime('%m', observation_date) AS month_selection,
SUM(count) AS observation_total_num_per_month
FROM observations 
GROUP BY month_selection
ORDER BY observation_total_num_per_month DESC;


SELECT species_id,
SUM(count) AS observation_total_num_per_specie
FROM observations
GROUP BY species_id 
ORDER BY observation_total_num_per_specie ASC;



SELECT region_id, COUNT(DISTINCT species_id) AS presencia_especies_por_region
FROM observations
GROUP BY region_id
ORDER BY presencia_especies_por_region;


SELECT species_id,
SUM(count) AS observation_total_num_per_specie
FROM observations
GROUP BY species_id 
ORDER BY observation_total_num_per_specie DESC;


SELECT observer,
COUNT(observer) AS observer_presence
FROM observations
GROUP BY observer
ORDER BY observer_presence DESC;


SELECT  s.id, s.scientific_name
FROM species s
LEFT JOIN observations o ON s.id = o.species_id
WHERE o.species_id IS NULL;


SELECT strftime('%m',observation_date) AS month_selection,
SUM(count) AS observation_total_num_per_month
FROM observations 
GROUP BY month_selection
ORDER BY observation_total_num_per_month DESC;