class CreateDogs < ActiveRecord::Migration[6.1]
  def change
    create_table :dogs do |t|
      t.string :image
      t.string :breed
      t.integer :price
      t.integer :user_id 
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
