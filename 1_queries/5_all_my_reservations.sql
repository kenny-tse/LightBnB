SELECT properties.*, reservations.*, 
AVG(property_reviews.rating) AS average_rating
FROM property_reviews
JOIN reservations ON reservations.id = property_reviews.reservation_id
JOIN properties ON properties.id = property_reviews.property_id
WHERE property_reviews.guest_id = '1' AND NOW()::date > end_date
GROUP BY properties.id, reservations.id
ORDER BY start_date ASC
LIMIT 10;
