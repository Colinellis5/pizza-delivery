class Order
  attr_accessor :food

  def initialize
    # default value of content is an empty Array.
    @contents = []
  end

  # add a pizza to the order
  def add(pizza)
    @contents << pizza
  end

  def value
    @contents.reduce(0){|sum,pizza| sum + pizza.price }
  end

end
