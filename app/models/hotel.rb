class Hotel < ActiveRecord::Base
  has_many :rooms
  has_many :bookings
  has_many :booked_guests, through: :bookings, source: :guest
end
