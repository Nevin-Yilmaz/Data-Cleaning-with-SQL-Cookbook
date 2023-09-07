DROP SCHEMA IF EXISTS world_events;
CREATE SCHEMA world_events;

USE world_events;

CREATE TABLE world_events (
    event_id INT PRIMARY KEY AUTO_INCREMENT,
    event_name VARCHAR(255),
    event_datetime_utc DATETIME,
    city VARCHAR(100)
);

INSERT INTO world_events (event_name, event_datetime_utc, city) VALUES
('New Year Celebration', '2023-01-01 00:00:00', 'London'),
('Independence Day Parade', '2023-07-04 17:00:00', 'New York'),
('Diwali Festival', '2023-10-23 20:30:00', 'Mumbai'),
('Olympics Opening Ceremony', '2024-07-26 11:00:00', 'Paris'),
('World Cup Final', '2022-11-21 15:00:00', 'Doha'),
('Carnival', '2023-02-25 02:00:00', 'Rio de Janeiro'),
('Chinese New Year', '2023-01-22 16:00:00', 'Beijing'),
('Hanami Festival', '2023-04-05 01:00:00', 'Tokyo'),
('Oktoberfest Start', '2023-09-16 10:00:00', 'Munich'),
('La Tomatina', '2023-08-30 09:00:00', 'Valencia'),
('Songkran Festival', '2023-04-13 15:00:00', 'Bangkok'),
('Day of the Dead', '2023-11-02 06:00:00', 'Mexico City'),
('Holi Festival', '2023-03-08 05:30:00', 'Delhi'),
('Bastille Day', '2023-07-14 12:00:00', 'Paris'),
('Canada Day', '2023-07-01 14:00:00', 'Ottawa'),
('Eid al-Fitr', '2023-04-22 19:00:00', 'Mecca'),
('ANZAC Day', '2023-04-25 14:00:00', 'Sydney'),
('National Day', '2023-10-01 16:00:00', 'Beijing'),
('King’s Day', '2023-04-27 08:00:00', 'Amsterdam'),
('Thanksgiving Day', '2023-11-23 17:00:00', 'New York'),
('Global Tech Conference', '2023-06-15 08:00:00', 'San Francisco'),
('World Music Awards', '2023-09-10 18:00:00', 'Los Angeles'),
('International Film Festival', '2023-05-20 10:00:00', 'Cannes'),
('Space Exploration Symposium', '2023-12-05 13:00:00', 'Cape Canaveral'),
('Global Culinary Expo', '2023-03-15 11:00:00', 'Rome'),
('Marine Life Conference', '2023-07-10 09:00:00', 'Cairns'),
('Desert Adventure Race', '2023-10-05 05:00:00', 'Dubai'),
('Arctic Expedition Start', '2023-11-15 10:00:00', 'Oslo'),
('Island Music Festival', '2023-08-15 14:00:00', 'Kingston'),
('Rainforest Exploration', '2023-06-20 12:00:00', 'Manaus'),
('Mountain Climbing Challenge', '2023-09-05 04:00:00', 'Kathmandu'),
('Underwater City Project', '2023-04-10 15:00:00', 'Male'),
('Robotics Expo', '2023-05-18 09:00:00', 'Seoul'),
('Future of Transport Event', '2023-07-24 10:00:00', 'Berlin'),
('Mystical Arts Festival', '2023-10-31 06:00:00', 'Edinburgh'),
('Historical Reenactment', '2023-09-20 14:00:00', 'Athens'),
('Cultural Heritage Days', '2023-06-08 10:00:00', 'Marrakech'),
('Polar Wildlife Seminar', '2023-12-10 11:00:00', 'Reykjavik'),
('Tropical Fruit Tasting', '2023-05-05 13:00:00', 'Honolulu'),
('Desert Flower Bloom', '2023-04-01 07:00:00', 'Phoenix'),
('Digital Art Showcase', '2023-08-18 16:00:00', 'Toronto'),
('Classical Music Concert', '2023-07-05 12:00:00', 'Vienna'),
('Martial Arts Tournament', '2023-11-10 14:00:00', 'Shanghai'),
('Jungle Adventure Retreat', '2023-09-15 15:00:00', 'Iquitos'),
('Ice Sculpture Contest', '2023-02-20 10:00:00', 'Helsinki'),
('Eco-friendly Innovations', '2023-06-25 09:00:00', 'Copenhagen');

