SELECT * FROM post as p
RIGHT OUTER JOIN "user" u on p.user_id = u.id

SELECT * FROM post as p
FULL OUTER JOIN "user" u on p.user_id = u.id