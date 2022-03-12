class Garden < ApplicationRecord
    validates :garden_name, presence: true
    validates :start_date, presence: true # --- defaults today's date ---validations?
    belongs_to :user
    # validates :greenhouse, presence: true # --- form defaults false which is good, but maybe I need a validation for edge cases
    # validates :public, presence: true # --- a presence requires a checkmark which makes everything true  ---something else?
end
