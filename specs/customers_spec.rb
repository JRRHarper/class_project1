require ('minitest/autorun')
require ('minitest/rg')

require_relative('../customers')

class TestCustomer < MiniTest::Test

  def setup
    
    @customer1 = Customer.new('Val', 500)
    @customer2 = Customer.new('Rick', 350)
    @customer3 = Customer.new('Tony', 200)

  end

  def test_customer_name
    assert_equal('Rick', @customer2.customer_name)
  end

  def test_customer_wallet
    assert_equal(500, @customer1.customer_wallet)
  end



end