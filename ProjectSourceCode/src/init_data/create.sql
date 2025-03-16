CREATE TABLE cards (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    sport VARCHAR(100) NOT NULL,
    attack INT NOT NULL,
    defense INT NOT NULL,
    health INT NOT NULL,
    overall INT NOT NULL,
    special_move BOOLEAN NOT NULL
);

CREATE TABLE users (
    username VARCHAR(255) PRIMARY KEY,
    password VARCHAR(255) NOT NULL,
    overall INT,
);

CREATE TABLE cardsToPlayers(
    username_id VARCHAR(255),
    player_id INT NOT NULL 
);