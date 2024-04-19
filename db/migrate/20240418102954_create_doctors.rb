class CreateDoctors < ActiveRecord::Migration[7.1]
  def change
    create_table :doctors do |t|
      t.integer :rating , default: 0
      t.integer :total_rate, default: 0
      t.integer :review_count, default: 0
      
      t.belongs_to :user, foreign_key: true, index: { unique: true }
      t.timestamps
    end
  end
end
