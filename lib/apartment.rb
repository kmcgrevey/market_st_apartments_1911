class Apartment
  attr_reader :number, :monthly_rent, :bathrooms, :bedrooms
  attr_accessor :renter

  def initialize(unit)
    @number = unit[:number]
    @monthly_rent = unit[:monthly_rent]
    @bathrooms = unit[:bathrooms]
    @bedrooms = unit[:bedrooms]
    # @renter = []
  end

  def add_renter(renter)
    require "pry"; binding.pry
    @renter = renter
  end


end
