CREATE TABLE IF NOT EXISTS users (
    user_id serial primary key,
    first_name text,
    last_name text,
    date_created date default 'now'
);

CREATE TABLE IF NOT EXISTS friends (
    user_id integer references users (user_id),
    friend_id integer references users (user_id)
);

INSERT INTO users (first_name, last_name) VALUES
('Brian', 'Hudson')
('Genghis', 'Khan'),
('Attila', 'the Hun'),
('Romulus', 'the Emperor'),
('Maximilian', 'III'),
('Napoleon', 'Bonaparte');

INSERT INTO friends VALUES 
(1, 2),
(1, 5),
(2, 1),
(2, 6),
(3, 4),
(4, 3),
(5, 1),
(6, 2);