require 'minitest/autorun'
require 'minitest/rg'
require_relative'./danger_pets'
require_relative'./store'
require_relative'./customers'


class TestStore < Minitest::Test

  def setup
    @pet1= DangerPets.new("Borris", "tiger", 100, 8)
    @pet2= DangerPets.new("Mulder", "polar bear", 200, 9)

    @customer1= Customer.new("Sam", 1000)
    @customer2= Customer.new("Derek", 500)

  @customers = []  
  @pets = [@pet1, @pet2]  
  @store = Store.new(@pets, 0, @customers)
  end

  def test_store_contents
    assert_equal(@pets, @store.contents)
  end

  def test_store_starts_till_at_zero
    assert_equal(0, @store.till)
  end

  def test_add_a_customer
    assert_equal([@customer1], @store.add_new_customer(@customer1))
  end


  def test_updated_till_value
    assert_equal(100, @store.updated_till_value(@pet1))
  end

  def test_sell_pet
    assert_equal([@pet2], @store.sell_pet(@pet1))
  end

  def test_updated_customer_bag
    assert_equal([@pet1], @store.updated_bag(@customer1, @pet1))
  end

  def test_updated_customer_wallet
    assert_equal(900, @store.updated_wallet(@customer1, @pet1))
  end
 


 end