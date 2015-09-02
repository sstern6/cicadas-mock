require 'csv'
module ReadCsv
  def self.parser
    @storage = []
      CSV.foreach('bikes.csv') do |row|
        @storage << Motorcycle.new({:color => row[0],:year => row[1],:make => row[2]})
      end
       @storage
  end
end

class Dealership
  # add motos and create a holder for each instance of motorcycle
  # include ReadCsv

  attr_reader :inventory

  def initialize
    @inventory = ReadCsv.parser
  end

  def find_bikes_less_than_5_years_old
    @inventory.count { |bikes| bikes.year > 2010}
    # new_bike_array =[]
    # @inventory.each do |bike|
    #   new_bike_array << bike if bike.year > 2010
    # end
    # p new_bike_array.count
  end

  def find_japanese_bike
    p @inventory.count { |bikes| bikes.make == "Honda" || bikes.make == "Suzuki"}
  end

  def generic_query_method(color,year,make)
    @inventory.count { |bikes| bikes.color == color && bikes.year == year && bikes.make == make }
  end
end


class Motorcycle

attr_reader :year, :color, :make

  def initialize(args={})
    @color = args.fetch(:color)
    @year = args.fetch(:year).to_i
    @make = args.fetch(:make)
  end
end

# ReadCsv.parser
new_dealer = Dealership.new

# Dealership.add_motorcycle
new_dealer.find_bikes_less_than_5_years_old
new_dealer.find_japanese_bike
new_dealer.generic_query_method("white", 2009, "BMW")



