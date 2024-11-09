CREATE Table "user"(
    id SERIAL PRIMARY KEY,
    userName VARCHAR(25) NOT NULL
)

CREATE Table post(
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id) ON DELETE CASCADE     -- this will delete that user post also
)

CREATE Table post(
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id) ON DELETE set NULL        -- this will set null to that user post user_id
)

CREATE Table post(
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id) ON DELETE set DEFAULT DEFAULT 2        -- this will set default value to that user post user_id
)

ALTER Table post
    alter column user_id set NOT NULL

INSERT INTO "user" (username) VALUES
('akash'),
('batash'),
('sagor'),
('nodi')

INSERT INTO post (title, user_id) VALUES
('Enjoying a sunny day with Akash! ☀️', 2),
('Batash just shared an amazing recipe! 🍚', 1),
('Exploring adventure with Sagor! 🌊', 4),
('Nodi''s wisdom always leaves me inspired. 🌠', 4)

SELECT * from "user"

SELECT * from post


DROP TABLE post

DROP TABLE "user"

DELETE FROM "user"
    WHERE id = 4

SELECT title, userName FROM post
JOIN "user"on post.user_id = "user".id

INSERT INTO post (id, title, user_id) VALUES
(5, 'This is a test post title', NULL)

SELECT * FROM post
LEFT JOIN "user" on post.user_id = "user".id