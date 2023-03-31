/* Since we already have the data in the last table, we can proceed to drop unecessary columns and assign its appropiate foreign keys */
alter table nfl_games drop column away;

alter table nfl_games drop column home;


ALTER TABLE nfl_team_ids ADD CONSTRAINT uniqueteam_id unique (id);


ALTER TABLE nfl_games ADD CONSTRAINT fk_nfl_away_team_id FOREIGN KEY (away_team_id) REFERENCES nfl_team_ids (id)
ALTER TABLE nfl_games ADD CONSTRAINT fk_nfl_home_team_id FOREIGN KEY (home_team_id) REFERENCES nfl_team_ids (id)


/* Lastly, insert into final_NFL_data utilizing a quiry that will re-arrange columns for easy reading on the model */
		
insert into final_NFL_data

select date,
		cast('0' as bit) home_advantage,
		away_team_id team_id,
		name,
		turnovers_away turnovers,
		possession_away possession,
		score_away score,
		cast((case when score_away - score_home > 0 then '1'
			else 0 end) as bit) as winner
 from nfl_games ga
 join nfl_team_ids nt
 	on nt.id = ga.away_team_id
 union 
 select date,
		cast('1' as bit) home_advantage,
		home_team_id team_id,
		name,
		turnovers_home turnovers,
		possession_home possession,
		score_home score,
		cast((case when score_home - score_away  > 0 then 1
			else 0 end) as bit) as winner
 from nfl_games ga
 join nfl_team_ids nt2
 	on nt2.id = ga.home_team_id
 order by date asc
 
 select *
 from final_NFL_data
 
 
ALTER TABLE final_NFL_data ADD CONSTRAINT fk_team_id FOREIGN KEY (team_id) REFERENCES nfl_team_ids (id);