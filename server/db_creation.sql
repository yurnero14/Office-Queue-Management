CREATE TABLE service (
    id INTEGER NOT NULL,
    tag TEXT NOT NULL,
    name TEXT NOT NULL,
    estimated_time INTEGER NOT NULL,
    PRIMARY KEY (id)
);

DROP TABLE counter

CREATE TABLE counter (
    id INTEGER NOT NULL,
    service INTEGER NOT NULL,
    PRIMARY KEY (id, service),
    FOREIGN KEY (id) REFERENCES service(id)
);

CREATE TABLE queue (
    date TEXT NOT NULL,
    service INTEGER NOT NULL,
    actual INTEGER NOT NULL,
    _last INTEGER NOT NULL,
    PRIMARY KEY (date, service),
    FOREIGN KEY (service) REFERENCES service(id)
);

CREATE TABLE user (
    id TEXT NOT NULL,
    password TEXT NOT NULL,
    salt TEXT NOT NULL,
    role TEXT NOT NULL,
    PRIMARY KEY (id)
);


INSERT INTO demo_queue_service (id, tag, name, estimated_time) VALUES

(1, 'AM', 'Account Management', '600'),
(2, 'CC', 'Credit Card', '240'),
(3, 'P', 'Pension', '420');

INSERT INTO demo_queue_counter (_id, service_id) VALUES 
(0, 1),
(0, 3),
(1, 2),
(1, 3),
(2, 0),
(2, 2),
(2, 1);

INSERT INTO demo_queue_user (username, password, salt, role) VALUES 
('admin', 'admin', 'no salt atm', 'master'),
('officer1', 'officer', 'no salt atm', 'officer'),
('officer2', 'officer', 'no salt atm', 'officer'),
('officer3', 'officer', 'no salt atm', 'officer');


UPDATE demo_queue_queue SET last = 4
SELECT * FROM demo_queue_counter
SELECT * FROM demo_queue_service

INSERT INTO demo_queue_service(id, tag, name, estimated_time) VALUES 
(5, "DM", "Deposit money", 5),
(6, "SP", "Sending packages", 10)

INSERT INTO demo_queue_queue(date, service_id, actual, 'last') VALUES
('2022-10-15', 5, 0,4)

INSERT INTO demo_queue_counter(_id, service_id) VALUES
(10,5),(11,5), (11,6)