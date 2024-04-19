class DoctorSlot < ApplicationRecord
    belongs_to :doctors
    belongs_to :slots
end
