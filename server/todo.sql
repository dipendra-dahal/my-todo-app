CREATE TABLE IF NOT EXISTS account (
    id SERIAL PRIMARY KEY,
    email VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS task (
    id SERIAL PRIMARY KEY,
    description TEXT NOT NULL
);
insert into task (description) values ('My test task');
insert into task (description) values ('My another test task');