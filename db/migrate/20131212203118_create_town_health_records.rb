class CreateTownHealthRecords < ActiveRecord::Migration
  def change
    create_table :town_health_records do |t|
      t.string :town
      t.integer :total_pop_2005
      t.integer :age_0_to_19_pop_2005
      t.integer :age_65_up_pop_2005
      t.integer :per_capita_income_2000
      t.integer :persons_below_200_percent_poverty_2000
      t.decimal :percent_persons_below_200_percent_poverty_2000
      t.decimal :percent_adequacy_prenatal_care
      t.decimal :percent_c_section_deliveries_2005_2008
      t.integer :number_infant_deaths_2005_2008
      t.decimal :infant_mortality_rate_per_thousand_2005_2008
      t.decimal :percent_low_birth_weight_2005_2008
      t.decimal :percent_multiple_births_2005_2008
      t.decimal :percent_publicly_financed_prenatal_care_2005_2008
      t.decimal :percent_teen_births_2005_2008

      t.timestamps
    end
  end
end
