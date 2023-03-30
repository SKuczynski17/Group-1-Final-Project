/* Table where the primary key will define the foreign keys for the other tables */

CREATE TABLE NFL_Team_IDs (
    ID int primary key unique,
	Name varchar(50),
	Abbreviation varchar(10),
	Conference varchar(20),
	Division varchar(10)
);

/* Initial dataset contained all the columns below, will not have primary keys and will be later dropped once is copied to final nfl_games table */

create table NFL_Game_Data (date date not null,
							away varchar(50) not null,
							home varchar(50) not null,
							first_downs_away INTEGER not null,
							first_downs_home INTEGER not null,
							third_downs_away varchar not null,
							third_downs_home varchar not null,
							fourth_downs_away varchar not null,
							fourth_downs_home varchar not null,
							passing_yards_away INTEGER not null,
							passing_yards_home INTEGER not null,
							rushing_yards_away INTEGER not null,
							rushing_yards_home INTEGER not null,
							total_yards_away INTEGER not null,
							total_yards_home INTEGER not null,
							comp_att_away varchar not null,
							comp_att_home varchar not null,
							sacks_away varchar not null,
							sacks_home varchar not null,
							rushing_attempts_away INTEGER not null,
							rushing_attempts_home INTEGER not null,
							fumbles_away INTEGER not null,
							fumbles_home INTEGER not null,
							int_away INTEGER not null,
							int_home INTEGER not null,
							turnovers_away INTEGER not null,
							turnovers_home INTEGER not null,
							penalties_away varchar not null,
							penalties_home varchar not null,
							redzone_away varchar not null,
							redzone_home varchar not null,
							drives_away INTEGER not null,
							drives_home INTEGER not null,
							def_st_td_away INTEGER not null,
							def_st_td_home INTEGER not null,
							possession_away varchar not null,
							possession_home varchar not null,
							score_away INTEGER not null,
							score_home INTEGER not null);

/* Final nfl_games with that will contain only the columns needed.
    Columns "away" and "home" later to be dropped and alter the table to have "away_team_id" and "home_team_id" as foreign keys*/

create table nfl_games (date DATE   NOT NULL,
	away_team_id int,
    away VARCHAR   NOT NULL,
	home_team_id int,
    home VARCHAR   NOT NULL,
    turnovers_away integer   NOT NULL,
    turnovers_home integer   NOT NULL,
    possession_away VARCHAR   NOT NULL,
    possession_home VARCHAR   NOT NULL,
    score_away integer   NOT NULL,
    score_home integer   NOT NULL);

/* This table will contain the final dataset to be used since it will re-arrange nfl game data */

create table final_NFL_data (date date,
		home_advantage bit,
		team_id int,
		name varchar,
		turnovers varchar,
		possession varchar,
		score int,
		winner bit);