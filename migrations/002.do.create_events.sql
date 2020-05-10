DROP TABLE IF EXISTS events;

CREATE TABLE events (
  id SERIAL PRIMARY KEY,
  parent_name TEXT NOT NULL,
  title TEXT NOT NULL,
  description TEXT NOT NULL,
  address TEXT NOT NULL,
  type TEXT NOT NULL,
  time_of_event TIMESTAMPTZ DEFAULT now() NOT NULL,
  author INTEGER REFERENCES users(id) ON DELETE SET NULL
);
