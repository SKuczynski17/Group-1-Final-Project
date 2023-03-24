# Group-1-Final-Project
## SuperBowl Champion Predictions

### Group 1 Members

Our group is made up of individuals with different backgrounds, experiences, and expertise. We value and appreciate each member's unique contribution and strive to create a supportive environment where everyone can thrive.

#### Team Members
- Sam Kuczynski (TL)
- Vytas Stuopis
- Samuel Aboma
- Felipe Serrano

### Technologies Used
#### Project Management

We have chosen to use Asana to track our progress and the stages of this project. This tool allows us to assign tasks, share files, feedback and ideas.

#### Dataset and ERD

We will be pulling our dataset from [Open ML](https://www.openml.org/search?type=data&status=active&id=43525&sort=runs) and we have created the ERD using the [Quick DBD](https://app.quickdatabasediagrams.com/#/) app.


### Why we choose this topic?

Predicting the Super Bowl champions using machine learning.

Our topic was chosen due to the widespread popularity of the NFL and the SuperBowl, as well as the potential for innovation and challenge in using machine learning to predict outcomes.

Our project aims to analyze the impact of key metrics such as Points Scored Differential, Turnover Differential, and Time of Possession on the likelihood of winning a SuperBowl.

We plan to train a machine learning model on playoff team statistics from every regular season since 2010 and create a model that can provide ideal targets for these statistics and predict future SuperBowl winners.

We believe that our project has the potential to contribute significantly to the field of sports analytics and showcase the power of machine learning in predicting outcomes.

### Questions to be answered:

With this data we are looking to create a machine learning model to analyze the impact key metrics have on the likelyhood of winning football games in the NFL.

We will train this model using specific statistics from every game including playoffs since 2010. This data includes many different statistics listed below but we are going to focus on three specifically:

* Points Scored Differential
* Turnover Differential
* Time of Possesion

We believe that these statistics play a major part in winning football games and will provide us the best model. Teams who rank high in these statistics should be winning more playoff games and also competing or winning SuperBowls more often. This model should provide us with ideal targets for these statistics that would give clear indiciators on what a team should target to win the most gamesa.

### Data description

The data set we chose is NFL game statistics from the 2002 to 2022 years scraped from ESPN Team States page for each game. The games for each year include 256 games from the regular season and 11 playoff games. In the data set from the games in the NFL season, there are 3 from all the seasons that were missing and not included. 

#### Varierty of statistics for each game 

General statistics:
* Date of the game
* Home Team
* Away Team
* Date of the game
* Score

Offensive statistics include:
* Efficiency on first, third and fourth downs, 
* Passing yards
* Completion attempts
* Rushing yards
* Rushing attempts
* Redzone statistics
* Time of possession

Defensive statistics include:
* Sacks
* Turnovers
* Defensive touchdowns

The data for each of these statistics is defined for the home and away team, which coincide with the NFL team which was playing in that game. The statistics for efficiency on first, third and fourth downs is successful tries out of all attempts, it does not include the efficiency percentage.

## Data
### ERD Diagram

We will have two tables, one with all the teams and basic info (team name, abbreviation, conference, division) and another one with all the games info from 2002 to 2022.

![ERD Diagram](https://github.com/SKuczynski17/Group-1-Final-Project/blob/main/ERD%20Image.png)