class Building
  attr_accessor :units

  def initialize
    @units = []
  end

  def add_unit(unit)
    @units << unit
  end

  def average_rent
    @units.count
    rents = []
    @units.find_all do |unit|
      # require "pry"; binding.pry
      rents << unit.monthly_rent
    end
    rents.sum.to_f / @units.count
  end

  def renter_with_highest_rent
    require "pry"; binding.pry
    @units.find {|unit| unit.monthly_rent.max }
    #broken but iterate over units to find max monthly_rent
    # then find renter associated with it
  end
end
