class Mycar
  
  GAS = 3  #1Km consume 3 liter

  attr_accessor :color, :consume1,:consume2, :km

  attr_reader :year ,:model 
  def initialize(c,g)
    @year = 2014
    @color = c
    @model = "Lamborghini-LP700"
    @current_speed = 0
    @km = 0
    self.consume1 = g
    self.consume2 = g * GAS
   
  end

  #def recolor(co)
  #   self.color = co
  #end

  def current_speed 
    puts "current speen is #{@current_speed} Km/h"
  end

  def speedup(number)
    @current_speed += number 

    puts "now we're acclerating #{number} Km/h!"
  end
   
  def spray_paint(color)
    self.color = color
    puts "now you have new color #{color}, it looks great!"
  end

  def brake(b)
      @current_speed -= b
      puts "brake #{b} km/H to #{@current_speed}"
  end

  def shut_off
      puts "now we're brake to 0 Km/h , let't to shut the car off and park." 
      puts "you driven #{self.consume1} Km it consuming #{self.consume2} liter gas!"
  end

  def info
    puts "this car is #{model} , Color is #{color}, and produced at #{year}."
  end

  def self.gas_mileage(gallons,miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end

  def to_s
    "hi i'm steve this is my car welcome here!#{self.color},#{self.model},#{self.year}"
  end

  #def consume_gas(kl)
  
  #self.consume * kl
  
  #end

end

car = Mycar.new( 'Green',20)
puts car.info
car.spray_paint('WHITE')
puts car.info
puts car.current_speed
puts car.speedup(20)
puts car.current_speed
puts car.speedup(90)
puts car.current_speed
puts car.brake(40)
puts car.current_speed
puts car.shut_off
Mycar.gas_mileage(13,351)

puts car #have to_s method
#puts car.consume_gas(1)