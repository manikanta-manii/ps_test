class Doctor < ApplicationRecord
    belongs_to :user
    has_many :doctor_slots
end
