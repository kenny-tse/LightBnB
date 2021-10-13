INSERT INTO users (id, name, email, password)
VALUES (1, 'kenny', 'kenny@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
(2, 'bob', 'bob@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
(3, 'john', 'john@hotmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

INSERT INTO properties (id, owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active)
VALUES (1, 1, 'the palace', 'looks like a palace', 'www.thumbnail.com', 'www.coverphoto.com', 300, 5, 6, 5, 'canada', 'rich st', 'vancouver','bc', 'e6y g39', true),
(2, 2, 'the shack', 'looks like a shack', 'www.thumbnail.com', 'www.coverphoto.com', 100, 1, 1, 1, 'canada', 'ok st', 'markham','on', 'k0y g3p', true),
(3, 3, 'the place', 'looks like a place', 'www.thumbnail.com', 'www.coverphoto.com', 300, 2, 2, 2, 'canada', 'place st', 'calgary','ab', 'e6y g39', false);

INSERT INTO reservations (guest_id, property_id, start_date, end_date)
VALUES (1, 1, '2018-09-11', '2018-09-26'),
(2, 2, '2019-01-04', '2019-02-01'),
(3, 3, '2021-10-01', '2021-10-14');

INSERT INTO property_reviews (id, guest_id, property_id, reservation_id, rating, message)
VALUES (1, 1, 1, 1, 5, 'it looks great'),
(2, 2, 2, 2, 2, 'it looks not so great'),
(3, 3, 3, 3, 3, 'its ok i guess');


