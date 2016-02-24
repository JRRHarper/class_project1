require 'minitest/autorun'
require 'minitest/rg'
require_relative './danger_pets'


class TestPets< Minitest::Test

  def setup
    @pet= DangerPets.new("Borris", "tiger", 100, 8)
  end

  def test_tiger_has_a_name
    assert_equal("Borris", @pet.name)
  end

end