-- PROJECT FILE
-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

DROP DATABASE IF EXISTS tournament;

CREATE DATABASE tournament;

\c tournament;

CREATE TABLE tournaments (
	tournamentId serial primary key,
	tournamentName text,
	);

CREATE TABLE players (
	playerId serial primary key,
	playerName text
	);

CREATE TABLE matches (
	matchId serial primary key,
	tournamentId integer references tournaments,
	winner integer references players (playerId),
	loser integer references players (playerId)
	);

CREATE VIEW standings AS
	SELECT
    players.playerId as id, players.playerName AS name,
    (SELECT count(matches.winner)
    	FROM matches
    	WHERE players.playerId = matches.winner)
    	AS wins,
	(SELECT count(matches.matchId)
		FROM matches
		WHERE players.playerId = matches.winner
		OR players.playerId = matches.loser)
		AS matches
	FROM players
	ORDER BY wins DESC, matches DESC;


