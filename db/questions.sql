-- What 3 towns have the highest population of citizens that are 65 years and older?
SELECT town,age_65_up_pop_2005 FROM town_health_records ORDER BY age_65_up_pop_2005 DESC LIMIT 3 OFFSET 1;

-- What 3 towns have the highest population of citizens that are 19 years and younger?
SELECT town,age_0_to_19_pop_2005 FROM town_health_records ORDER BY age_0_to_19_pop_2005 DESC LIMIT 3 OFFSET 1;

-- What 5 towns have the lowest per capita income?
SELECT town,per_capita_income_2000 FROM town_health_records ORDER BY per_capita_income_2000 LIMIT 5;

-- Omitting Boston, Becket, and Beverly, what town has the highest percentage of teen births?
SELECT town, percent_teen_births_2005_2008 FROM town_health_records WHERE town != 'Boston' AND town != 'Becket' AND town != 'Beverly' ORDER BY percent_teen_births_2005_2008 DESC LIMIT 1;

-- Omitting Boston, what town has the highest number of infant mortalities?
SELECT town, number_infant_deaths_2005_2008 FROM town_health_records WHERE town != 'Boston' ORDER BY number_infant_deaths_2005_2008 DESC LIMIT 1 OFFSET 1;
