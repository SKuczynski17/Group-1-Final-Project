-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "NFL_Game_Data" (
    "Date" string   NOT NULL,
    "Away" string   NOT NULL,
    "Home" string   NOT NULL,
    "First_downs_away" integer   NOT NULL,
    "First_downs_home" integer   NOT NULL,
    "Third_downs_away" string   NOT NULL,
    "Third_downs_home" string   NOT NULL,
    "Fourth_downs_away" string   NOT NULL,
    "Fourth_downs_home" string   NOT NULL,
    "Passing_yards_away" integer   NOT NULL,
    "Passing_yards_home" integer   NOT NULL,
    "Rushing_yards_home" integer   NOT NULL,
    "Russing_yards_away" integer   NOT NULL,
    "Total_yards_away" integer   NOT NULL,
    "Total_yards_home" integer   NOT NULL,
    "Comp_att_away" integer   NOT NULL,
    "Comp_att_home" integer   NOT NULL,
    "Sacks_away" string   NOT NULL,
    "Sacks_home" string   NOT NULL,
    "Rushing_attempts_away" integer   NOT NULL,
    "Rushing_attempts_home" integer   NOT NULL
);

