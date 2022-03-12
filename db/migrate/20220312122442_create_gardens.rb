class CreateGardens < ActiveRecord::Migration[7.0]
  def change
    create_table :gardens do |t|
      t.string :garden_name
      t.date :start_date
      t.boolean :greenhouse
      t.boolean :public

      t.timestamps
    end
  end
end
