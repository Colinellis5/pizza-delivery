class Order
  attr_accessor :food

  def initialize
    @contents = []                         # default value of content is an empty Array.
  end

# add a pizza to the order
  def add(pizza)
    @contents << pizza
  end

# Calculate value of the order

  def value
    @contents.reduce(0){|sum,pizza| sum + pizza.price }
  end

# Check the contents of the order

  def check_contents
    puts "your order"
    @contents.each do |pizza|
      puts "#{pizza.name} - € #{pizza.price}"
    end
    puts "*" * 20
  end

end
