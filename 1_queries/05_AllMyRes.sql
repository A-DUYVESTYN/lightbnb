SELECT reservations.id, properties.title, start_date, cost_per_night, AVG(property_reviews.rating) as average_rating
FROM reservations
JOIN properties ON property_id = properties.id
LEFT JOIN property_reviews ON property_reviews.property_id = properties.id
WHERE reservations.guest_id = 1
GROUP BY reservations.id, properties.title, cost_per_night
ORDER BY start_date
LIMIT 10;
