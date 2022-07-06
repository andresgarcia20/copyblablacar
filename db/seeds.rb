# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
# #   Character.create(name: "Luke", movie: movies.first)

# # ------------ Users -----------
# # ADMIN
# User.create(name: "Andrés", surname: "García", nickname: "drewan", phone_number: 123123123, email: "andres@cw.com", birthday: "2001/03/20", role: "admin")

# # DRIVER
# User.create(name: "Paco", surname: "Perez", nickname: "paquirrin", phone_number: 123123124, email: "paco@cw.com", birthday: "1990/01/02", role: "driver")

# # PASSENGER
# User.create(name: "Sara", surname: "Puertas", nickname: "sarinha", phone_number: 123123125, email: "sara@cw.com", birthday: "2001/03/20")

# # BANNED
# User.create(name: "Fer", surname: "Cheng", nickname: "fer123", phone_number: 123123126, email: "fer@cw.com", birthday: "2001/03/20", role: "banned")

# # ------------- Vehicles ---------------

# Vehicle.create(user_id: 1, model: "Yamaha R6", air_conditioning: false, vehicle_type: "motorbike", consumption: 4.0, nickname: "running")

# Vehicle.create(user_id: 2, model: "Ford Fiesta", air_conditioning: true, vehicle_type: "car", consumption: 4.0, nickname: "partyy")

# Vehicle.create(user_id: 3, model: "Volkswagen Polo", air_conditioning: true, vehicle_type: "car", consumption: 6.4, nickname: "polito")

# Vehicle.create(user_id: 3, model: "Volkswagen Bus", air_conditioning: false, vehicle_type: "car", consumption: 8, nickname: "hippie")

# #--------------- Trips ------------------

Trip.create(
  user_id: 1,
  origin: "MADRID",
  destinations: ["BARCELONA", "CORDOBA"],
  available_seats: 1,
  departure_date: "2022-07-20 12:00:00",
  vehicle_id: 1,
)

Trip.create(
  user_id: 1,
  origin: "VALENCIA",
  destinations: ["GRANADA", "SEVILLA"],
  available_seats: 1,
  departure_date: "2022-07-20 12:00:00",
  vehicle_id: 1,
)

Trip.create(
  user_id: 2,
  origin: "MALAGA",
  destinations: ["CADIZ", "BILBAO"],
  available_seats: 3,
  departure_date: "2022-07-20 12:00:00",
  vehicle_id: 2,
)

Trip.create(
  user_id: 2,
  origin: "MADRID",
  destinations: ["SALAMANCA", "BILBAO", "BARCELONA"],
  available_seats: 2,
  departure_date: "2022-07-20 12:00:00",
  vehicle_id: 3,
)

Trip.create(
  user_id: 5,
  origin: "CORDOBA",
  destinations: ["VALENCIA", "GRANADA"],
  available_seats: 6,
  departure_date: "2022-07-20 12:00:00",
  vehicle_id: 4,
)

Trip.create(
  user_id: 5,
  origin: "SEVILLE",
  destinations: ["MALAGA", "CADIZ", "MADRID", "SALAMANCA"],
  available_seats: 4,
  departure_date: "2022-07-20 12:00:00",
  vehicle_id: 4,
)
