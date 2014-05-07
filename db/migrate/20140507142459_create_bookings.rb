class CreateBookings < ActiveRecord::Migration
  def change
  	create_table :bookings do |t|
  		t.belongs_to :hotel
  		t.belongs_to :user
  		t.belongs_to :room
  		t.boolean 	 :paid
  	end
  end
end
