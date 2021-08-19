INSERT INTO users (name, email, password)
 VALUES ('Bianca Del Rio', 'hurricane@gmail.ru', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
 ('Shangela Laquifa Wadley', 'robbed@me.me', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
 ('Courtney Act', 'body@marketing.au', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
 ('Trixie Mattel', 'ive_already_got_your_money@honey.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
 ('Alyssa Edwards', 'justin@dancetexas.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
 ('Adore Delano', 'party@party.party', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
 ('Latrice Royale', 'chunky_yet_funky@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
 ('Sasha Velour', 'rose_petal@victory.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
 ('Katya Zamolodchikova', 'kz@clean.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
 ('Violet Chachki', 'iamviolet@chachki.org', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
 ('Laganja Estranja', 'ifeelveryattacked@gamil.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
 ('Jinkx Monsoon', 'monsoon_season@ducksback.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
 ('Ben Dela Creme', 'rise@top.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
 ('Manila Luzon', 'disney_drag@excelence.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
 ('Ricky Martin', 'vida_loca@livin.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
 ('Lance Bass', 'nsync_boy@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u');

INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active)
VALUES (1, 'Russia Retreat', 'Where I hide from the KGB, with guests!', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Ftwitter.com%2Fthebiancadelrio%2Fstatus%2F1271914310776655873&psig=AOvVaw1jZOOiqzUgcnWt7hz-Nmx8&ust=1629409692890000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCJCuoqfGu_ICFQAAAAAdAAAAABAD', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Ftwitter.com%2Fthebiancadelrio%2Fstatus%2F1286377318064091136&psig=AOvVaw1jZOOiqzUgcnWt7hz-Nmx8&ust=1629409692890000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCJCuoqfGu_ICFQAAAAAdAAAAABAK', 1000, 6, 6, 10, 'Columbia', 'Capital Hill', 'Pereira', 'Andean', '660009', FALSE),
(4, 'Money Honey', 'You got money, I want that money.', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Ftwitter.com%2Ftrixiemattel%2Fstatus%2F1256671727519592448&psig=AOvVaw0REAYX4aiHoi4X9IOzfdZa&ust=1629410856052000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCKDo19HKu_ICFQAAAAAdAAAAABAJ', 'https://pbs.twimg.com/media/DupkCYEU0AACOpA.jpg', 5000, 6, 2, 4, 'Cambodia', 'Stung Ta Ngoun', 'Krong Poi Pet', 'Western Cambodia', '0', TRUE),
(4, 'Friend House', 'For "Friends"', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Ftwitter.com%2Ftrixiemattel%2Fstatus%2F1397983693881286665&psig=AOvVaw1yEZ1hPJaFnSTj4gdBBmxX&ust=1629410689180000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCOCL1ILKu_ICFQAAAAAdAAAAABAI', 'https://i.pinimg.com/originals/83/61/42/836142faea1d276233b4fa84f4d0e27f.jpg', 500, 0, 2, 1, 'Singapore', 'Yishun Street 41', 'Singapore', 'Yishan', '760455', FALSE);

INSERT INTO reservations (start_date, end_date, guest_id, property_id)
VALUES ('2018-02-12T08:06:00.000Z', '2018-02-12T08:14:30.000Z',15, 3),
('2018-02-12T08:06:00.000Z', '2018-02-12T08:14:30.000Z',16, 3),
('2018-02-12T08:06:00.000Z', '2018-02-12T08:14:30.000Z',3, 2),
('2018-02-12T08:06:00.000Z', '2018-02-12T08:14:30.000Z',6, 1),
('2018-02-12T08:06:00.000Z', '2018-02-12T08:14:30.000Z',10, 2),
('2018-02-12T08:06:00.000Z', '2018-02-12T08:14:30.000Z',14, 1),
('2018-02-12T08:06:00.000Z', '2018-02-12T08:14:30.000Z',12, 1),
('2018-02-12T08:06:00.000Z', '2018-02-12T08:14:30.000Z',5, 1),
('2018-02-12T08:06:00.000Z', '2018-02-12T08:14:30.000Z',11, 1);

INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message)
VALUES (3, 2, 3, 2, 'Fine until the mice'),
(10, 2, 5, 1, 'Fed me mice'),
(15, 3, 1, 3, 'Personally could have had a better time at a club'),
(16, 3, 2, 5, '5/5 want to see Ricky again'),
(6, 1, 4, 5, 'Party :)'),
(14, 1, 6, 5, ''),
(12, 1, 7, 5, ''),
(5, 1, 8, 3, 'Needs better service'),
(11, 1, 9, 4, 'Well, I ran out of medication and coud not restock in country! Bianca needs to have a larger stock.');