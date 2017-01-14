class User < ActiveRecord::Base
#as host
  has_many :listings, foreign_key: 'host_id'
  has_many :reservations, through: :listings


#as guest
  has_many :trips, class_name: 'Reservation', foreign_key: 'guest_id'
  has_many :reviews, through: :trips
end
