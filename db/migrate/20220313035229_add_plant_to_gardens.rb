class AddPlantToGardens < ActiveRecord::Migration[7.0]
  def change
    add_reference :gardens, :plant, null: false, foreign_key: true
  end
end
