class User < ActiveRecord::Base
  has_many :rentals
  has_many :bikestations, through: :rentals
end
