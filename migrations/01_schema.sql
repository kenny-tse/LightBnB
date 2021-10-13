DROP TABLE IF EXISTS users CASCADE;

CREATE TABLE users (
id INTEGER PRIMARY KEY,
name VARCHAR(255),
email VARCHAR(255),
password VARCHAR(255)
);

CREATE TABLE properties (
id INTEGER PRIMARY KEY,
owner_id INTEGER REFERENCES users(id),
title VARCHAR(255),
description TEXT,
thumbnail_photo_url VARCHAR(255),
cover_photo_url VARCHAR(255),
cost_per_night INTEGER,
parking_spaces INTEGER,
number_of_bathrooms INTEGER,
country VARCHAR(255),
street VARCHAR(255),
city VARCHAR(255),
province VARCHAR(255),
post_code VARCHAR(255),
active BOOLEAN
);

CREATE TABLE reservations (
id INTEGER PRIMARY KEY,
start_date DATE,
end_date DATE,
property_id INTEGER REFERENCES properties(id),
guest_id INTEGER REFERENCES users(id)
);

CREATE TABLE property_reviews (
id INTEGER PRIMARY KEY,
guest_id INTEGER REFERENCES users(id),
property_id INTEGER REFERENCES properties(id),
reservation_id INTEGER REFERENCES reservations(id),
rating SMALLINT,
message TEXT
);
