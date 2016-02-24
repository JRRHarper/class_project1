class Customer

  attr_accessor (:customer_wallet)
  attr_reader :customer_name, :carry_case


  def initialize (customer_name, customer_wallet)
    @customer_name = customer_name
    @customer_wallet = customer_wallet
    @carry_case = []
  end


  # def customer_name
  #   return @customer_name
  # end

  # def customer_wallet
  #   return @customer_wallet
  # end

end