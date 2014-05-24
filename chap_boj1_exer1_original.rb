class Mycar
	attr_accessor :year,  :model,:speed ,:speed_up, :brake, :shut_off
	attr_reader :color
	def initialize(y, m)
		@year = y
		@color = "white"
		@model = m

	end
	
	def current_speed(speed)
		@speed = 0
		puts "current speen is #{speed} Km/h"
	end


	def change_speed(speup,b)
		self.speed_up = speup 
		self.brake = b

		"now we're speed up to #{speup}, ok , current speed is #{speup} Km/h , now we're brake to #{b} Km/h!"
	end

	def shut_off(sh)
		shut_off = sh

		puts "now we're brake to 0 Km/h , and we are going to shut car off." if  sh == "yes"

	end


	def info

		"this car is #{model} , Color is #{color}, and produced at #{year}."

	end

end

car = Mycar.new( '2014-mid',Mycar.initialize,'Lamborghini-LP700')

puts car.info
puts car.current_speed('0')

su = gets.chomp
bd = gets.chomp
puts car.change_speed(su,bd)
puts "do you want to shut the car off?"
ask = gets.chomp
car.shut_off(ask)

