class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.integer :number
      t.string :service
      t.string :location
      t.integer :user_id 
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
