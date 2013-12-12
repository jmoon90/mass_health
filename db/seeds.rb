require 'csv'

CSV.foreach('db/data/mass_health_data.csv', headers: true) do |row|
  record = TownHealthRecord.new
  record.town = row['Geography']
  record.total_pop_2005 = row["total pop, year 2005"].gsub(/\D/, '').to_i
  record.age_0_to_19_pop_2005 = row["age 0-19, year 2005"].gsub(/\D/, '').to_i
  record.age_65_up_pop_2005 = row["age 65+, year 2005"].gsub(/\D/, '').to_i
  record.per_capita_income_2000 = row["Per Capita Income, year 2000"].gsub(/\D/, '').to_i
  record.persons_below_200_percent_poverty_2000 = row["Persons Living Below 200% Poverty, year 2000 "].gsub(/\D/, '').to_i
  record.percent_persons_below_200_percent_poverty_2000 = row["% all Persons Living Below 200% Poverty Level, year 2000"].gsub(/[^0-9.]/, '').to_f
  record.percent_adequacy_prenatal_care = row["% adequacy prenatal care (kotelchuck)"].gsub(/[^0-9.]/, '').to_f.round(2)
  record.percent_c_section_deliveries_2005_2008 = row["% C-section deliveries, 2005-2008"].gsub(/[^0-9.]/, '').to_f
  record.number_infant_deaths_2005_2008 = row["Number of infant deaths, 2005-2008"].gsub(/\D/, '').to_i
  record.infant_mortality_rate_per_thousand_2005_2008 = row["Infant mortality rate (deaths per 1000 live births), 2005-2008"].gsub(/[^0-9.]/, '').to_f
  record.percent_low_birth_weight_2005_2008 = row["% low birthweight 2005-2008"].gsub(/[^0-9.]/, '').to_f
  record.percent_multiple_births_2005_2008 = row["% multiple births, 2005-2008"].gsub(/[^0-9.]/, '').to_f
  record.percent_publicly_financed_prenatal_care_2005_2008 = row["% publicly financed prenatal care, 2005-2008"].gsub(/[^0-9.]/, '').to_f
  record.percent_teen_births_2005_2008 = row["% teen births, 2005-2008"].gsub(/[^0-9.]/, '').to_f
  record.save
end
