CREATE TABLE players (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    sport VARCHAR(100) NOT NULL,
    attack INT NOT NULL,
    defense INT NOT NULL,
    health INT NOT NULL,
    overall INT NOT NULL,
    special_move BOOLEAN NOT NULL
);
