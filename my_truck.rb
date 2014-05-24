module Raceable

  def race
    "this car is use to racing!"
  end
end

class Vehicle

@@track_number_object = 0

attr_accessor :color
  attr_reader :year, :model

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end


  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @current_speed = 0
    @@track_number_object += 1
  end

  def speed_up(number)
    @current_speed += number
    puts "You push the gas and accelerate #{number} mph."
  end

  def brake(number)
    @current_speed -= number
    puts "You push the brake and decelerate #{number} mph."
  end

  def current_speed
    puts "You are now going #{@current_speed} mph."
  end

  def shut_down
    @current_speed = 0
    puts "Let's park this bad boy!"
  end

 
  def to_s
    "My car is a #{self.color}, #{self.year}, #{@model}!"
  end

  def self.count_object

        @@track_number_object
  end


  def age
    ti = Time.new.year - self.year
    "this car are #{ti} years now!"
    
  end
  private

  def years_old
     include age
  end

  
end

class MyCar <Vehicle
  NUMBER_OF_DOOR = 2
  include Raceable

  def my_info
    "my car is #{@color}, #{model}, #{year}"
  end
end

class Mytruck <Vehicle
 NUMBER_OF_DOOR = 4
end
car = MyCar.new(1933, "Ford Focus", "silver")
truck = Mytruck.new("2010", "Ford Sendra", "white")

puts car
puts truck
puts car.race

puts car.age
puts car.my_info
puts car.years_old
/puts Vehicle.count_object
puts "___________________________"
puts  Mytruck.ancestors
puts "___________________________"
puts MyCar.ancestors
puts "___________________________"
puts Vehicle.ancestors/
