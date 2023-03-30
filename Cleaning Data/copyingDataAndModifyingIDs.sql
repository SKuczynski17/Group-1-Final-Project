/* Inserting data into nfl_games from another table */

insert into nfl_games (date,
    away,
    home,
    turnovers_away,
    turnovers_home,
    possession_away,
    possession_home,
    score_away,
    score_home)
	Select date,
				away,
				home,
				turnovers_away,
				turnovers_home,
				possession_away,
				possession_home,
				score_away,
				score_home
		  	from nfl_game_data;

/* Once the data is inserted, we add the team_id correspondent column into the nfl_games table
Note: PostgreSQL has problems when executing all update statements, will have to run one-by-one */

update nfl_games set away_team_id = 1 where away = 'Cardinals';
update nfl_games set away_team_id = 2 where away = 'Falcons';
update nfl_games set away_team_id = 3 where away = 'Ravens';
update nfl_games set away_team_id = 4 where away = 'Bills';
update nfl_games set away_team_id = 5 where away = 'Panthers';
update nfl_games set away_team_id = 6 where away = 'Bears';
update nfl_games set away_team_id = 7 where away = 'Bengals';
update nfl_games set away_team_id = 8 where away = 'Browns';
update nfl_games set away_team_id = 9 where away = 'Cowboys';
update nfl_games set away_team_id = 10 where away = 'Broncos';
update nfl_games set away_team_id = 11 where away = 'Lions';
update nfl_games set away_team_id = 12 where away = 'Packers';
update nfl_games set away_team_id = 13 where away = 'Texans';
update nfl_games set away_team_id = 14 where away = 'Colts';
update nfl_games set away_team_id = 15 where away = 'Jaguars';
update nfl_games set away_team_id = 16 where away = 'Chiefs';
update nfl_games set away_team_id = 17 where away = 'Dolphins';
update nfl_games set away_team_id = 18 where away = 'Vikings';
update nfl_games set away_team_id = 19 where away = 'Patriots';
update nfl_games set away_team_id = 20 where away = 'Saints';
update nfl_games set away_team_id = 21 where away = 'Giants';
update nfl_games set away_team_id = 22 where away = 'Jets';
update nfl_games set away_team_id = 23 where away = 'Raiders';
update nfl_games set away_team_id = 24 where away = 'Eagles';
update nfl_games set away_team_id = 25 where away = 'Steelers';
update nfl_games set away_team_id = 26 where away = 'Chargers';
update nfl_games set away_team_id = 27 where away = '49ers';
update nfl_games set away_team_id = 28 where away = 'Seahawks';
update nfl_games set away_team_id = 29 where away = 'Rams';
update nfl_games set away_team_id = 30 where away = 'Buccaneers';
update nfl_games set away_team_id = 31 where away = 'Titans';
update nfl_games set away_team_id = 32 where away = 'Washington';

update nfl_games set home_team_id = 1 where home = 'Cardinals';
update nfl_games set home_team_id = 2 where home = 'Falcons';
update nfl_games set home_team_id = 3 where home = 'Ravens';
update nfl_games set home_team_id = 4 where home = 'Bills';
update nfl_games set home_team_id = 5 where home = 'Panthers';
update nfl_games set home_team_id = 6 where home = 'Bears';
update nfl_games set home_team_id = 7 where home = 'Bengals';
update nfl_games set home_team_id = 8 where home = 'Browns';
update nfl_games set home_team_id = 9 where home = 'Cowboys';
update nfl_games set home_team_id = 10 where home = 'Broncos';
update nfl_games set home_team_id = 11 where home = 'Lions';
update nfl_games set home_team_id = 12 where home = 'Packers';
update nfl_games set home_team_id = 13 where home = 'Texans';
update nfl_games set home_team_id = 14 where home = 'Colts';
update nfl_games set home_team_id = 15 where home = 'Jaguars';
update nfl_games set home_team_id = 16 where home = 'Chiefs';
update nfl_games set home_team_id = 17 where home = 'Dolphins';
update nfl_games set home_team_id = 18 where home = 'Vikings';
update nfl_games set home_team_id = 19 where home = 'Patriots';
update nfl_games set home_team_id = 20 where home = 'Saints';
update nfl_games set home_team_id = 21 where home = 'Giants';
update nfl_games set home_team_id = 22 where home = 'Jets';
update nfl_games set home_team_id = 23 where home = 'Raiders';
update nfl_games set home_team_id = 24 where home = 'Eagles';
update nfl_games set home_team_id = 25 where home = 'Steelers';
update nfl_games set home_team_id = 26 where home = 'Chargers';
update nfl_games set home_team_id = 27 where home = '49ers';
update nfl_games set home_team_id = 28 where home = 'Seahawks';
update nfl_games set home_team_id = 29 where home = 'Rams';
update nfl_games set home_team_id = 30 where home = 'Buccaneers';
update nfl_games set home_team_id = 31 where home = 'Titans';
update nfl_games set home_team_id = 32 where home = 'Washington';