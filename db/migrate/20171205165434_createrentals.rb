class Createrentals < ActiveRecord::Migration[5.1]
  def change
    create_table :rentals do |t|
      t.boolean :active
      t.integer :user_id
      t.integer :bike_station_id
    end
  end
end
