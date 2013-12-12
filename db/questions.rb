# -- What 3 towns have the highest population of citizens that are 65 years and older?
TownHealthRecord.select(:town).order("age_65_up_pop_2005 DESC").limit(3).offset(1)

# -- What 3 towns have the highest population of citizens that are 19 years and younger?
TownHealthRecord.select(:tow).order("age_0_to_19_pop_2005 DESC").limit(3).offset(1)

# -- What 5 towns have the lowest per capita income?
TownHealthRecord.select(:town).order("per_capita_income_2000").limit(5)

# -- Omitting Boston, Becket, and Beverly, what town has the highest percentage of teen births?
TownHealthRecord.select(:town).where("town != 'Boston' AND town != 'Becket' AND town != 'Beverly'").order("percent_teen_births_2005_2008 DESC").limit(1)

# -- Omitting Boston, what town has the highest number of infant mortalities?
TownHealthRecord.select(:town).where("town != 'Boston'").order("number_infant_deaths_2005_2008 DESC").offset(1).limit(1)

