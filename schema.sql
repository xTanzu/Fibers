CREATE TABLE users (id SERIAL PRIMARY KEY, username TEXT UNIQUE, password TEXT);
CREATE TABLE fibers (id SERIAL PRIMARY KEY, fibername TEXT UNIQUE, description TEXT);
CREATE TABLE tags (id SERIAL PRIMARY KEY, tag TEXT UNIQUE);
CREATE TABLE messages (id SERIAL PRIMARY KEY, time TIMESTAMP, author_id INTEGER REFERENCES users, fiber_id INTEGER REFERENCES fibers,content TEXT);
CREATE TABLE user_fibers (id SERIAL PRIMARY KEY, user_id INTEGER REFERENCES users, fiber_id INTEGER REFERENCES fibers);
CREATE TABLE fiber_tags (id SERIAL PRIMARY KEY, fiber_id INTEGER REFERENCES fibers, tag_id INTEGER REFERENCES tags);

