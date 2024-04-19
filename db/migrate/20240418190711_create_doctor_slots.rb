class CreateDoctorSlots < ActiveRecord::Migration[7.1]
  def change
    create_table :doctor_slots do |t|
      t.belongs_to :doctors,foreign_key: true
      t.belongs_to :slots,foreign_key: true
      t.timestamps
    end
  end
end
