module PizzaOrder
  class Pizza
    attr_reader :name, :toppings

    def initialize(name, *toppings)
      @name, @toppings = name, toppings
    end

    def has_topping?(t)
      toppings.include?(t)
    end
  end
end
