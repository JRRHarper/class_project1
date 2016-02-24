class Store

attr_reader :pets, :till, :customers


  def initialize(pets, till, customers)
    @customers = customers
    @pets = pets
    @till = 0
  end

  def contents
    return @pets

  end

  def till_at_zero
    return @till
  end

  def add_new_customer(customer)
    @customers.push(customer)
  end

  def updated_till_value(pet)
    @till += pet.price
  end

  def sell_pet(pet)
    @pets.delete(pet)
    return @pets
  end

  def updated_bag(customer, pet)
    customer.carry_case.push(pet)
    return customer.carry_case
 end

  def updated_wallet(customer, pet)
    customer.customer_wallet -= pet.price
    return customer.customer_wallet
  end

 


end