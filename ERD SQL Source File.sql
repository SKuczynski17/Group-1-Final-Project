-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "NFL_Game_Data" (
    "date" DATE   NOT NULL,
    "away" VARCHAR   NOT NULL,
    "home" VARCHAR   NOT NULL,
    "turnovers_away" integer   NOT NULL,
    "turnovers_home" integer   NOT NULL,
    "possession_away" VARCHAR   NOT NULL,
    "possession_home" VARCHAR   NOT NULL,
    "score_away" integer   NOT NULL,
    "score_home" integer   NOT NULL,
    CONSTRAINT "pk_NFL_Game_Data" PRIMARY KEY (
        "date","away","home"
     )
);

CREATE TABLE "NFL_Team_IDs" (
    "Team_ID" INT   NOT NULL,
    "Team_Name" VARCHAR   NOT NULL,
    "Team_City" VARCHAR   NOT NULL,
    CONSTRAINT "pk_NFL_Team_IDs" PRIMARY KEY (
        "Team_Name"
     )
);

ALTER TABLE "NFL_Game_Data" ADD CONSTRAINT "fk_NFL_Game_Data_away" FOREIGN KEY("away")
REFERENCES "NFL_Team_IDs" ("Team_Name");

ALTER TABLE "NFL_Game_Data" ADD CONSTRAINT "fk_NFL_Game_Data_home" FOREIGN KEY("home")
REFERENCES "NFL_Team_IDs" ("Team_Name");

