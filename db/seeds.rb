users = ["Francis Slim", "Julie Blook", "Mike Rasta"]

users.each {|user| User.create(name: user)}

francis = User.find(1)
julie = User.find(2)
mike = User.find(3)

# 2) Create a hotel named "Westin" with 5 rooms at a rate of $300

westin = Hotel.create(name: "Westin")

5.times do |x|
  room = Room.create(rate: 300)
  westin.rooms << room
end

# 3) Create a hotel named "Ritz" with 3 rooms at a rate of $500

ritz = Hotel.create(name: "Ritz")

3.times do |x|
  room = Room.create(rate: 500)
  ritz.rooms << room
end

# 4) Create a booking for Julie at the Ritz

ritz.booked_guests << julie

# 5) Create a booking for Francis at the Westin and another
#    booking for him at the Ritz

ritz.booked_guests << francis
westin.booked_guests << francis

# 6) Create two bookings for Mike at the Westin that are both
#    marked as paid

westin.booked_guests << mike
westin.booked_guests << mike

westin.bookings.where(:guest_id => 3).each do |booking|
  booking.paid = true
  booking.save
end