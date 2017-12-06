a = BikeStation.create(name: "Brooklyn", inventory: 10)
b = BikeStation.create(name: "Staten Island", inventory: 10)
c = BikeStation.create(name: "Queens", inventory: 10)
d = BikeStation.create(name: "The Bronx", inventory: 10)
e = BikeStation.create(name: "Manhattan", inventory: 10)

a1 = User.create(name: "Jerry")
a2 = User.create(name: "Joe")
a3 = User.create(name: "Kelley")
a4 = User.create(name: "Lindsey")
a5 = User.create(name: "Leslie")
a6 = User.create(name: "Johann")
a7 = User.create(name: "Marvin")
a8 = User.create(name: "Eric")
a9 = User.create(name: "Natalie")
a10 = User.create(name: "Sabastian")

rental_1 = Rental.create(active: true, user_id: 1, bike_station_id: 1)
rental_2 = Rental.create(active: false, user_id: 2, bike_station_id: 2)
rental_3 = Rental.create(active: true, user_id: 3, bike_station_id: 3)
rental_4 = Rental.create(active: false, user_id: 4, bike_station_id: 4)
rental_5 = Rental.create(active: true, user_id: 5, bike_station_id: 5)

# def add_rental
#   Rental.create(active: true, owner_id: @user_rent.id, bike_station_id: @station.id)
# end
