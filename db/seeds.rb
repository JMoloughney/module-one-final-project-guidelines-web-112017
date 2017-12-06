a = BikeStation.create(name: "Brooklyn", inventory: 10)
b = BikeStation.create(name: "Staten Island", inventory: 10)
c = BikeStation.create(name: "Queens", inventory: 10)
d = BikeStation.create(name: "Bronx", inventory: 10)
e = BikeStation.create(name: "Manhattan", inventory: 10)



user1 = User.create(name: "Jerry")
user2 = User.create(name: "Joe")
user3 = User.create(name: "Kelley")
user4 = User.create(name: "Lindsey")
user5 = User.create(name: "Leslie")
user6 = User.create(name: "Johann")
user7 = User.create(name: "Marvin")
user8 = User.create(name: "Eric")
user9 = User.create(name: "Natalie")
user10 = User.create(name: "Sebastian")

Rental.create(active: true ,user_id: 1 ,bike_station_id: 1)
Rental.create(active: false ,user_id: 2 ,bike_station_id: 2)
Rental.create(active: true ,user_id: 3 ,bike_station_id: 3)
Rental.create(active: false ,user_id: 4 ,bike_station_id: 4)
Rental.create(active: true ,user_id: 5 ,bike_station_id: 5)


