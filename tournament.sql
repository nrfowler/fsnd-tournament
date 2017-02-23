-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.
drop database IF EXISTS  tournament;
create database tournament;
create table players(
  id serial primary key,
  name varchar(40) NOT NULL
);
create table matches(
  id serial primary key,
  winner integer references players(id) NOT NULL,
  loser integer references players(id) NOT NULL
);
