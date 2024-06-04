-- 1) Remove a previously inserted film from the inventory and all corresponding rental records
-- !!! We did't add record film (we have it in inventory) to the rental, 'cause this wasn't included in the tasks (Insert and Update).
-- Accordingly, there is no record. !!!
-- Delete rental records
-- DELETE FROM rental
-- WHERE inventory_id IN (
--     SELECT inventory_id
--     FROM inventory
--     WHERE film_id = 1001
-- );

-- Delete inventory records

DELETE FROM inventory
WHERE film_id = 1001;

-- Remove film from film_actor
DELETE FROM film_actor
WHERE film_id = 1001;

-- Delete film
DELETE FROM film
WHERE film_id = 1001;

-- 2) Remove any records related to you (as a customer) from all tables except "Customer" and "Inventory"

-- Remove payment records
DELETE FROM payment
WHERE customer_id = 3;

-- Remove rental records
DELETE FROM rental
WHERE customer_id = 3;

-- Free up the storage space on a tables (not of the entire database) and 
-- update statistics used by the planner to determine the most efficient way to execute a query
-- VACUUM ANALYZE customer, inventory, film_actor, film, payment, rental;



