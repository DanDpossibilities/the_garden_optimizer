class AddUserToGardens < ActiveRecord::Migration[7.0]
  def change
    add_reference :gardens, :user, null: false, foreign_key: true
  end
end
