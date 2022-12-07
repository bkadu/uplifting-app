CREATE TABLE quotes (
    quote_id serial PRIMARY KEY,
    quote TEXT NOT NULL,
    submitted_by VARCHAR (50),
    verified BOOLEAN, 
    likes VARCHAR,
    insert_timestamp TIMESTAMP NOT NULL
);

CREATE TABLE users (
    user_id serial PRIMARY KEY,
    first_name VARCHAR (50) NOT NULL,
    last_name VARCHAR (50) NOT NULL, 
    email VARCHAR (100),
    slack_id VARCHAR (50)
);

CREATE TABLE comments (
    comment_id serial PRIMARY KEY, 
    user_id INT NOT NULL REFERENCES users,
    quote_id INT NOT NULL REFERENCES quotes,
    comment TEXT,
    insert_timestamp TIMESTAMP NOT NULL
);

INSERT INTO quotes (quote, submitted_by, verified, insert_timestamp)
VALUES 
        ('Once you know what failure feels like, determination chases success. - Kobe', 'Brent Bundang', True, current_timestamp),
        ($$It isn't the mountains ahead that wear you down. It's the pebble in your shoe.- Muhammad Ali$$, 'Brent Bundang', false, current_timestamp),
        ($$Being brave isn’t not being scared, being brave is being scared and still doing something. -Michael Scott$$, 'Brent Bundand', true, current_timestamp);

