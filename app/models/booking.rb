class Booking < ActiveRecord::Base
  belongs_to :booked_room
  belongs_to :guest, class_name: :user
end
