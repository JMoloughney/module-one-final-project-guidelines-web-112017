require "pry"

class CommandLineInterface
  attr_reader :user
  def greet
    puts "Welcome to BikeLoan!"
  end

  def get_user_name
    input = gets.chomp
    @user = input
    @user_rent = User.all.find_by(name: @user)
  end

  def get_station
    input = gets.chomp
    @bike_station = input
    @station = BikeStation.all.find_by(name: @bike_station)
  end

  def user_name
    puts "Please enter your name:"
    input = get_user_name
    if User.find_by(name: "#{input}")
      puts "Welcome #{input}!"
    else
      User.create(name: "#{input}")
      puts "Thank you for singing up #{User.all.last.name}!"
    end
  end

  def main_menu
    message = [
      "What would you like to do?:",
      "1 : Borrow",
      "2 : Return",
      "3 : Check trips",
      "4 : Exit"
    ]
    message.each do |i|
      puts i.chomp
    end
    menu_input
  end

  def menu_input
    input = gets.chomp
    puts "Please enter a numbered command: #{input}"
    while input
      case input
      when "1"
        borrow
        break
      when "2"
        return_bike
        break
      when "3"
        check_rides
        break
      when "exit"
        exit_menu
        break
      else
        puts "Please enter a valid command: #{input}"
      end
    end
  end

  def exit_menu
    puts "Goodbye"
  end

  def add_rental
    Rental.create(active: true, user_id: @user_rent.id, bike_station_id: @station.id)
  end
  
  def borrow_query
    puts "Where would you like to borrow from?"
    input = get_station
    # user_rental = Rental.all.select {|rental| user.id == rental.user_id}
    # binding.pry
    if !input == BikeStation.all.each {|stat| stat.name}
      puts "Location not found. Please try another location."
    elsif @station.inventory <= 0
      puts "Sorry not enough bikes on hand at #{input}. Please pick another station!"
    else
      add_rental
    end
  end

# def add_rental()

def please_return
  puts "It looks like you have a bike out. You must return your bike before you can borrow another one."
  main_menu
end

def borrow
  user = User.all.find_by(name: @user)
  user_rental = Rental.all.select {|rental| user.id == rental.user_id}

  if user_rental[-1].active == true
    puts "Please return your bike."
    main_menu
  else
    borrow_query
  end
end

#add inventory
  def station_choice
    # locations = [
    #   "Choose a station:"
    #   "1 : Brooklyn",
    #   "2 : Staten Island",
    #   "3 : Queens",
    #   "4 : The Bronx",
    #   "5 : Manhattan",
    #   "6 : Main Menu"
    # ]
    # locations.each do |i|
    #   puts i.chomp.downcase
    # end
  end

  def borrow_bike
    # if !active?
    #   puts "Where would you like to depart from?"
    #   puts "Pick a bike station:"
    #   station_choice
    #     gives options of locations and show inventory
    #     (only display bike_stations with a positive inventory)
    #     after user picks...
    #   puts "Here is bike! Enjoy your ride"
    #     decrement that bike_stations inventory
    #   elsif active?
    #     puts "It looks like you have a bike out. You must return your bike before you can borrow another one."
    #     main_menu
    # end
  end

  def return_bike
    # if active
    #   station_choice
    # else !active?
    #   puts "It looks like you have already returned your ride! Thank you!"
    #   main_menu
    # end
  end

  def check_ride_choice
    # puts "What would you like to check?"
    # message = [
    #   "1 : Rides from 1 location?",
    #   "2 : Rides from all locations?",
    #   "3 : Main Menu"
    # ]
    # message.each do |i|
    #   puts i.chomp.downcase
    # end
  end

  def user_location_rides
    # puts "Rides from which location?"
    # station_choice
    # puts "You have taken #{x_amount of rides} from #{x_location}."
  end

  def check_user_total_rides
    # puts "You have taken #{x_amount of rides}."
  end

  def no_rides_available_at_all
    #Message
  end

  def manager
    #if login is "manager"
    # allow manager to check rides from each station_choice
    # allow manager to check rides for passenger
    # allow manager to check inventory for each station_choice
    # allow manager to check inventory for all stations
  end

  def run
    greet
    user_name
    main_menu
  end

end
