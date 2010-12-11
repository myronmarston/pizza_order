module PizzaOrder
  class Developer
    attr_reader :likes, :dislikes

    def initialize(likes_and_dislikes)
      @likes    = likes_and_dislikes[:likes]
      @dislikes = likes_and_dislikes[:dislikes]
    end

    def satisfied_with?(pizza)
      likes.any?     { |t| pizza.has_topping?(t) } &&
      dislikes.none? { |t| pizza.has_topping?(t) }
    end
  end
end

