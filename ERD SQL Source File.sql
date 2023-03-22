-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/KimmqP
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

CREATE TABLE `NFL_Game_Data` (
    `Date` string  NOT NULL ,
    `Away Team ID` string  NOT NULL ,
    `Home Team ID` string  NOT NULL ,
    `Turnovers_away` integer  NOT NULL ,
    `Turnovers_home` integer  NOT NULL ,
    `Possession_away` string  NOT NULL ,
    `Possession_home` string  NOT NULL ,
    `Score_away` integer  NOT NULL ,
    `Score_home` integer  NOT NULL 
);

CREATE TABLE `NFL_Team_IDs` (
    `Team_ID` integer  NOT NULL ,
    `Team_Name` string  NOT NULL ,
    `Team_City` string  NOT NULL 
);

ALTER TABLE `NFL_Game_Data` ADD CONSTRAINT `fk_NFL_Game_Data_Away Team ID` FOREIGN KEY(`Away Team ID`)
REFERENCES `NFL_Team_IDs` (`Team_ID`);

ALTER TABLE `NFL_Game_Data` ADD CONSTRAINT `fk_NFL_Game_Data_Home Team ID` FOREIGN KEY(`Home Team ID`)
REFERENCES `NFL_Team_IDs` (`Team_ID`);

