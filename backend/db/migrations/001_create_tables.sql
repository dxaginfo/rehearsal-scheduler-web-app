CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  email VARCHAR(200) UNIQUE NOT NULL
);
CREATE TABLE bands (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  owner_user_id INTEGER REFERENCES users(id)
);
CREATE TABLE rehearsals (
  id SERIAL PRIMARY KEY,
  band_id INTEGER REFERENCES bands(id),
  date_time TIMESTAMP,
  location VARCHAR(200)
);
CREATE TABLE rehearsal_attendance (
  id SERIAL PRIMARY KEY,
  rehearsal_id INTEGER REFERENCES rehearsals(id),
  user_id INTEGER REFERENCES users(id),
  status VARCHAR(20)
);
CREATE TABLE availability (
  id SERIAL PRIMARY KEY,
  user_id INTEGER REFERENCES users(id),
  band_id INTEGER REFERENCES bands(id),
  available_times JSON
);