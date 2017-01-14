class Reservation < ActiveRecord::Base
#as Trip
  belongs_to :guest, class_name: "User"
  has_many :reviews

#as Reservation
  belongs_to :listing
end
