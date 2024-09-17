-- Створення таблиці worker
CREATE TABLE worker (
                        id SERIAL PRIMARY KEY,
                        name VARCHAR(1000) NOT NULL CHECK (LENGTH(name) >= 2),
                        birthday DATE NOT NULL CHECK (EXTRACT(YEAR FROM birthday) > 1900),
                        level VARCHAR(10) NOT NULL CHECK (level IN ('Trainee', 'Junior', 'Middle', 'Senior')),
                        salary INTEGER NOT NULL CHECK (salary BETWEEN 100 AND 100000)
);

-- Створення таблиці client
CREATE TABLE client (
                        id SERIAL PRIMARY KEY,
                        name VARCHAR(1000) NOT NULL CHECK (LENGTH(name) >= 2)
);

-- Створення таблиці project
CREATE TABLE project (
                         id SERIAL PRIMARY KEY,
                         client_id INTEGER REFERENCES client(id),
                         start_date DATE NOT NULL,
                         finish_date DATE NOT NULL,
                         CHECK (finish_date > start_date)
);

-- Створення таблиці project_worker
CREATE TABLE project_worker (
                                project_id INTEGER REFERENCES project(id),
                                worker_id INTEGER REFERENCES worker(id),
                                PRIMARY KEY (project_id, worker_id)
);
