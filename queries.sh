#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"

echo "$($PSQL "SELECT name FROM teams WHERE team_id = (SELECT winner_id FROM games WHERE round = 'Final' AND year = 2018)")"

echo "$($PSQL "SELECT COUNT(*) FROM games WHERE round = 'Quarter-Final'")"

echo "$($PSQL "SELECT COUNT(*) FROM games WHERE winner_goals > opponent_goals")"

echo "$($PSQL "SELECT AVG(winner_goals) FROM games")"

echo "$($PSQL "SELECT MAX(winner_goals) FROM games")"

echo "$($PSQL "SELECT name FROM teams WHERE team_id = (SELECT opponent_id FROM games WHERE winner_id = (SELECT team_id FROM teams WHERE name = 'Brazil') ORDER BY year LIMIT 1)")"
