DROP TABLE IF EXISTS cards;
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

DROP TABLE IF EXISTS users;
CREATE TABLE users (
    username VARCHAR(255) PRIMARY KEY,
    password VARCHAR(255) NOT NULL,
    overall INT
);

DROP TABLE IF EXISTS cardsToUsers;
CREATE TABLE cardsToUsers(
    username_id VARCHAR(255),
    card_id INT NOT NULL 
);

DROP TABLE IF EXISTS battles;
CREATE TABLE battles(
    id SERIAL PRIMARY KEY,
    player1_id INT NOT NULL,
    player2_id INT NOT NULL,
    winner_id INT NOT NULL,
    player1_score INT NOT NULL,
    player2_score INT NOT NULL
);

DROP TABLE IF EXISTS decks;
CREATE TABLE decks(
    id SERIAL PRIMARY KEY,
    card1_id INT NOT NULL,
    card2_id INT NOT NULL,
    card3_id INT NOT NULL,
    card4_id INT NOT NULL,
    card5_id INT NOT NULL
);

DROP TABLE IF EXISTS userToDecks;
CREATE TABLE userToDecks(
    username_id VARCHAR(255),
    deck_id INT NOT NULL
);

DROP TABLE IF EXISTS trades;
CREATE TABLE trades(
    id SERIAL PRIMARY KEY,
    card1_id INT NOT NULL,
    card2_id INT NOT NULL,
    card1_owner VARCHAR(255) NOT NULL,
    card2_owner VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS cardPacks;
CREATE TABLE cardPacks(
    id SERIAL PRIMARY KEY,
    sport VARCHAR(100) NOT NULL
);