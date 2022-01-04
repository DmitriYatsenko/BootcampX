-- CREATE TABLE assignment (
--     id SERIAL PRIMARY KEY NOT NULL,
--     name VARCHAR(255) NOT NULL,
--     content VARCHAR(255)
--     day DATE,
--     chapter NUMBER,
--     duration NUMBER
-- );

-- CREATE TABLE assignment_submission (
--     id SERIAL PRIMARY KEY NOT NULL,
--     assignment_id SERIAL NOT NULL,
--     student_id SERIAL NOT NULL,
--     duration NUMBER,
--     submission_date DATE
-- );

CREATE TABLE assignments (
    id SERIAL PRIMARY KEY NOT NULL,
    name VARCHAR(255),
    content TEXT,
    day INTEGER,
    chapter INTEGER,
    duration INTEGER
);

CREATE TABLE assignment_submissions (
    id SERIAL PRIMARY KEY NOT NULL,
    assignment_id INTEGER REFERENCES assignments(id) ON DELETE CASCADE,
    student_id INTEGER REFERENCES students(id) ON DELETE CASCADE,
    duration INTEGER,
    submission_date DATE
);