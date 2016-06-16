require 'minitest/autorun'
require 'minitest/rg'
require_relative './danger_pets'


class TestPets< Minitest::Test

  def setup
    @pet1= DangerPets.new("Borris", "tiger", 100, 8)
    @pet2= DangerPets.new("Mulder", "polar bear", 200, 9)
    @pets=[@pet1, @pet2]
  end

  def test_tiger_has_a_name
    assert_equal("Borris", @pet1.name)
  end

def test_if_we_have_species
  assert_equal("tiger", @pet1.species)
end

def test_price_tiger
  assert_equal(100, @pet1.price)
end

def test_tiger_danger_level
  assert_equal(8, @pet1.danger_level)
end

# def test_polar_bear_v_tiger
# assert_equal(@pet2, @pets.danger_test)
# end


end