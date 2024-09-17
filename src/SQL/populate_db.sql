-- Додавання працівників
INSERT INTO worker (name, birthday, level, salary) VALUES
                                                       ('John Doe', '1985-03-20', 'Senior', 6000),
                                                       ('Jane Smith', '1990-07-15', 'Middle', 4500),
                                                       ('Max Mustermann', '1975-05-22', 'Junior', 1200),
                                                       ('Maria Ivanova', '1995-12-11', 'Trainee', 800),
                                                       ('Jack Black', '1983-10-02', 'Senior', 7000),
                                                       ('Sarah Connor', '1988-04-12', 'Middle', 3500),
                                                       ('Oliver Twist', '1992-09-03', 'Junior', 1500),
                                                       ('Nancy Drew', '1987-11-05', 'Senior', 5000),
                                                       ('James Bond', '1965-01-07', 'Senior', 9000),
                                                       ('Hermione Granger', '2000-02-20', 'Trainee', 500);

-- Додавання клієнтів
INSERT INTO client (name) VALUES
                              ('ACME Corp'),
                              ('Wayne Enterprises'),
                              ('Stark Industries'),
                              ('Umbrella Corporation'),
                              ('Oscorp Industries');

-- Додавання проєктів
INSERT INTO project (client_id, start_date, finish_date) VALUES
                                                             (1, '2023-01-01', '2023-06-01'),
                                                             (2, '2022-07-01', '2023-01-01'),
                                                             (3, '2023-03-01', '2023-05-01'),
                                                             (4, '2021-04-01', '2023-04-01'),
                                                             (5, '2023-01-01', '2023-12-01'),
                                                             (1, '2022-09-01', '2023-09-01'),
                                                             (2, '2023-02-01', '2024-02-01'),
                                                             (3, '2023-01-01', '2023-06-01'),
                                                             (4, '2022-04-01', '2023-10-01'),
                                                             (5, '2022-11-01', '2023-01-01');

-- Призначення працівників на проєкти
INSERT INTO project_worker (project_id, worker_id) VALUES
                                                       (1, 1), (1, 2), (2, 3), (2, 4), (3, 5),
                                                       (4, 6), (5, 7), (6, 8), (7, 9), (8, 10),
                                                       (9, 1), (9, 2), (10, 3), (10, 4), (10, 5);
