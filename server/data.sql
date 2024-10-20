CREATE DATABASE todoapp;

CREATE TABLE todos (
    id VARCHAR(255) PRIMARY KEY,
    user_email VARCHAR(255),
    title VARCHAR(30),
    progress int,
    date VARCHAR(300)
);

CREATE TABLE users (
    email VARCHAR(255) PRIMARY KEY,
    hashed_password VARCHAR(255)
);

-- INSERT INTO todos (id, user_email, title, progress, date)
-- VALUES (
--     '1',
--     'user@example.com',
--     'Sample Task',
--     50,
--     TO_CHAR(NOW(), 'YYYY-MM-DD HH24:MI:SS') -- Current timestamp as a string
-- );