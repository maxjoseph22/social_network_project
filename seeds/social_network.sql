DROP TABLE IF EXISTS posts;
DROP SEQUENCE IF EXISTS posts_id_seq;
DROP TABLE IF EXISTS users;
DROP SEQUENCE IF EXISTS users_id_seq;


-- Create the table without the foreign key first.
CREATE SEQUENCE IF NOT EXISTS users_id_seq;

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  email_address text,
  username text
);

-- Then the table with the foreign key second.
CREATE SEQUENCE IF NOT EXISTS posts_id_seq;

CREATE TABLE posts (
  id SERIAL PRIMARY KEY,
  title text,
  content text,
  view_count int,
-- The foreign key name is always {other_table_singular}_id
  user_id int,
  constraint fk_user foreign key(user_id)
    references users(id)
    on delete cascade
);

INSERT INTO users (email_address, username) VALUES ('max@gmail.com', 'max9889');
INSERT INTO users (email_address, username) VALUES ('john@hotmail.com', 'hedgegog22');
INSERT INTO users (email_address, username) VALUES ('frank11@yahoo.com', 'poolboy78');
INSERT INTO users (email_address, username) VALUES ('sally2@gmail.com', 'sally90009');
INSERT INTO users (email_address, username) VALUES ('rachel.jones@hotmail.co.uk', 'boshboshbosh');

INSERT INTO posts (title, content, view_count, user_id) VALUES ('hey guys', 'me good today', 4, 1);
INSERT INTO posts (title, content, view_count, user_id) VALUES ('birthday', 'pls come', 99, 1);
INSERT INTO posts (title, content, view_count, user_id) VALUES ('dog missing', 'pls search', 4, 3);
INSERT INTO posts (title, content, view_count, user_id) VALUES ('cat found', 'omg yes', 23, 3);
INSERT INTO posts (title, content, view_count, user_id) VALUES ('boring post', 'ok ok ok yeah', 10, 2);
INSERT INTO posts (title, content, view_count, user_id) VALUES ('exciting post', 'just kidding', 33, 2);
INSERT INTO posts (title, content, view_count, user_id) VALUES ('it me', 'mario', 1, 4);
INSERT INTO posts (title, content, view_count, user_id) VALUES ('boring', 'code code code', 10, 5);
INSERT INTO posts (title, content, view_count, user_id) VALUES ('oof', 'tests test test', 2, 5);
INSERT INTO posts (title, content, view_count, user_id) VALUES ('damn', 'last post from me', 5, 5);