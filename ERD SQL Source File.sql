-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Table where the primary key will define the foreign keys for the other tables

CREATE TABLE "NFL_Team_IDs" (
    "ID" int   NOT NULL,
    "Name" varchar(50)   NOT NULL,
    "Abbreviation" varchar(10)   NOT NULL,
    "Conference" varchar(20)   NOT NULL,
    "Division" varchar(10)   NOT NULL,
    CONSTRAINT "pk_NFL_Team_IDs" PRIMARY KEY (
        "ID"
     )
);

-- Final nfl_games with that will contain only the columns needed.
-- Columns "away" and "home" later to be dropped and alter the table to have "away_team_id" and "home_team_id" as foreign keys
CREATE TABLE "nfl_games" (
    "date" DATE   NOT NULL,
    "away_team_id" int   NOT NULL,
    "away" VARCHAR   NOT NULL,
    "home_team_id" int   NOT NULL,
    "home" VARCHAR   NOT NULL,
    "turnovers_away" integer   NOT NULL,
    "turnovers_home" integer   NOT NULL,
    "possession_away" VARCHAR   NOT NULL,
    "possession_home" VARCHAR   NOT NULL,
    "score_away" integer   NOT NULL,
    "score_home" integer   NOT NULL,
    CONSTRAINT "pk_nfl_games" PRIMARY KEY (
        "date","away_team_id","home_team_id"
     )
);

ALTER TABLE "nfl_games" ADD CONSTRAINT "fk_nfl_games_away_team_id" FOREIGN KEY("away_team_id")
REFERENCES "NFL_Team_IDs" ("ID");

ALTER TABLE "nfl_games" ADD CONSTRAINT "fk_nfl_games_home_team_id" FOREIGN KEY("home_team_id")
REFERENCES "NFL_Team_IDs" ("ID");

