require 'minitest/autorun'
require 'minitest/rg'
require_relative'./danger_pets'
require_relative'./store'


class TestStore < Minitest::Test

  def setup
    @pet1= DangerPets.new("Borris", "tiger", 100, 8)
    @pet2= DangerPets.new("Mulder", "polar bear", 200, 9)

  @pets = [@pet1, @pet2]  
  @store = Store.new(@pets, 0)
  end

def test_store_contents
  assert_equal(@pets, @store.contents)
end

def test_store_starts_till_at_zero
  assert_equal(0, @store.till)
end


 end