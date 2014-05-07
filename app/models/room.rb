class Room < ActiveRecord::Base
  has_many :guests, through: :bookings
  belongs_to :hotel
end
