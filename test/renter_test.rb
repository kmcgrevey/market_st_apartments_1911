require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/renter'
require_relative '../lib/apartment'

class RenterTest < Minitest::Test

  def test_it_exists
    renter1 = Renter.new("Jessie")
    assert_instance_of Renter, renter1
  end



end
