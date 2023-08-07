SELECT owners.id AS owner_id, first_name, last_name,
       vehicles.id AS vehicle_id, make, model, year, 
       price, owner_id AS owner_id_vehicle
FROM owners
FULL JOIN vehicles ON owners.id = vehicles.owner_id;





SELECT first_name, last_name, COUNT(vehicles.id) AS COUNT
FROM owners
LEFT JOIN vehicles ON owners.id = vehicles.owner_id
GROUP BY first_name, last_name
ORDER BY first_name ASC;






SELECT first_name, last_name,
       ROUND(AVG(vehicles.price)) AS average_price,
       COUNT(vehicles.id) AS count
FROM owners
JOIN vehicles ON owners.id = vehicles.owner_id
GROUP BY first_name, last_name
HAVING COUNT(vehicles.id) > 1 AND ROUND(AVG(vehicles.price)) > 10000
ORDER BY first_name DESC;



