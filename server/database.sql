CREATE DATABASE blog;

CREATE TABLE users(
  user_id UUID DEFAULT uuid_generate_v4(),
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  user_email VARCHAR(255) NOT NULL UNIQUE,
  user_password VARCHAR(255) NOT NULL,
  PRIMARY KEY(user_id)
);

CREATE TABLE post(
  post_id SERIAL,
  user_id UUID ,
  title VARCHAR(255),
  content VARCHAR(1000),
  PRIMARY KEY (post_id),
  FOREIGN KEY (user_id) REFERENCES users(user_id)
);


INSERT INTO users (first_name, last_name, user_email, user_password) VALUES ('Uvaldo', 'Zumaya', 'uvzumaya@gmail.com', 'password');

INSERT INTO post (user_id, title, content) values ('16f55c96-7227-4a46-9ce0-b12572a4ed99', 'hello', 'hello world');