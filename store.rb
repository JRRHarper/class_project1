class Store

attr_reader :pets, :till


  def initialize(pets, till)
    @pets = pets
    @till = 0
  end

  def contents
    return @pets

  end

  def till_at_zero
    return @till
  end



end