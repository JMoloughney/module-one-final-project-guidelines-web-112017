class Createbikestation < ActiveRecord::Migration[5.1]
  def change
  	create_table :bike_stations do |t|
  		t.string :name
  		t.integer :inventory
  	end
  end
end
