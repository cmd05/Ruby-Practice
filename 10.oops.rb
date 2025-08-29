class Vehicle
  attr_accessor :brand, :year

  def initialize(brand, year)
    @brand = brand
    @year = year
  end

  def start
    puts "#{@brand} vehicle is starting"
  end

  def stop
    puts "#{@brand} vehicle is stopping"
  end

  def honk
    puts "The vehicle honks generically"
  end
end

class Car < Vehicle
  attr_accessor :model

  def initialize(brand, year, model)
    @model = model
    super(brand, year) # call parent constructor
  end

  def drive
    puts "#{@brand} #{@model} is driving"
  end

  # override parent method
  def honk
    puts "#{@brand} #{@model} is honking: HONK!"
  end
end

# Usage
my_vehicle = Vehicle.new("Generic Brand", 2010)
my_vehicle.start()
my_vehicle.honk()

my_car = Car.new("Toyota", 2022, "Corolla")
my_car.start()        # inherited method
my_car.drive()        # child method
my_car.honk()         # overridden method

# Output:
# Generic Brand vehicle is starting
# The vehicle honks generically
# Toyota vehicle is starting
# Toyota Corolla is driving
# Toyota Corolla is honking: HONK!