class CreatePlants < ActiveRecord::Migration[7.0]
  def change
    create_table :plants do |t|
      t.string :sci_name
      t.string :common_name
      t.date :green_seed_start
      t.date :seed_start
      t.integer :begin_prod
      t.integer :end_prod
      t.integer :green_end_prod

      t.timestamps
    end
  end
end
