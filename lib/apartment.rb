class Apartment
  attr_reader :number, :monthly_rent, :bathrooms, :bedrooms
  
  def initialize(unit)
    @unit_number = unit[:number]
    @monthly_rent = unit[:monthly_rent]
    @bathrooms = unit[:bathrooms]
    @bedrooms = unit[:bedrooms]
  end


end
