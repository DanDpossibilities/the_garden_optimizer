class Plant < ApplicationRecord
    has_many :gardens
    # has_many :users, through: :gardens  # maybe create new plants through garden create page
end
