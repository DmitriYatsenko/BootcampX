-- create table cohort (
--     id serial primary key,
--     name varchar(69),
--     start_date date,
--     end_date date
-- )

-- create table student (
--     id serial primary key,
--     name varchar(69),
--     email varchar(69),
--     phone number(9),
--     github url,
--     start_date date,
--     end_date date,
--     cohort_id number
-- )

CREATE TABLE cohorts (
    id SERIAL PRIMARY KEY NOT NULL,
    name VARCHAR(255) NOT NULL,
    start_date DATE,
    end_date DATE
);

CREATE TABLE students (
    id SERIAL PRIMARY KEY NOT NULL,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    phone VARCHAR(32),
    github VARCHAR(255),
    start_date DATE,
    end_date DATE,
    cohort_id INTEGER REFERENCES cohorts(id) ON DELETE CASCADE
);