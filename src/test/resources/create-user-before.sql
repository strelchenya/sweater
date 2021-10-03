DELETE
FROM user_role;

DELETE
FROM usr;

INSERT INTO usr(id, active, password, username)
VALUES (1, true, '$2a$08$N7v2rsOcYZWTbpuAoXZ5LuVbLmi8WGisPHY5XDuutBFrhWWAnU8.q', 'newUser'),
       (2, true, '$2a$08$N7v2rsOcYZWTbpuAoXZ5LuVbLmi8WGisPHY5XDuutBFrhWWAnU8.q', 'mike');

INSERT INTO user_role(user_id, roles)
VALUES (1, 'USER'),
       (1, 'ADMIN'),
       (2, 'USER');