class Rental < ActiveRecord::Base
  belongs_to :bikestation
  belongs_to :user
end
