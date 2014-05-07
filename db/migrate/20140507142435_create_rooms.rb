class CreateRooms < ActiveRecord::Migration
  def change
  	create_table :rooms do |t|
  		t.integer :rate
  		t.belongs_to :hotel

  		t.timestamps
  	end
  end
end
