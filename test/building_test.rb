require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/renter'
require_relative '../lib/apartment'
require_relative '../lib/building'

class BuildingTest < Minitest::Test

  def setup
    @unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    @unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    @unit3 = Apartment.new({number: "C3", monthly_rent: 1150, bathrooms: 2, bedrooms: 2})
    @unit4 = Apartment.new({number: "D4", monthly_rent: 1500, bathrooms: 3, bedrooms: 2})
    @renter1 = Renter.new("Spencer")
    @renter2 = Renter.new("Jessie")
    @renter3 = Renter.new("Max")
  end
  def test_it_exists
    building = Building.new
    assert_instance_of Building, building
  end

  def test_it_has_no_units
    building = Building.new
    assert_equal [], building.units
  end

  def test_it_can_add_units
    building = Building.new
    building.add_unit(@unit1)
    building.add_unit(@unit2)
    assert_equal [@unit1, @unit2], building.units
  end

  def test_it_can_calculate_average_rent
    building = Building.new
    building.add_unit(@unit1)
    building.add_unit(@unit2)
    assert_equal 1099.5, building.average_rent
  end

  def test_it_can_find_renter_with_highest_rent
    building = Building.new
    building.add_unit(@unit1)
    building.add_unit(@unit2)
    building.add_unit(@unit3)
    @unit2.add_renter(@renter1)
    # require "pry"; binding.pry
    assert_equal @renter1, building.renter_with_highest_rent
  end

end
