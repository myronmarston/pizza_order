require 'spec_helper'

module PizzaOrder
  describe Developer do
    subject { described_class.new(:likes => [:mushrooms, :pepperoni], :dislikes => [:olives, :eggplant]) }

    describe "#satisfied_with?(pizza)" do
      context "when the pizza contains one of the toppings the developer likes" do
        it 'returns true if it does not contain any toppings the developer dislikes' do
          pizza = Pizza.new("Custom", :pepperoni, :pineapple)
          subject.should be_satisfied_with(pizza)
        end

        it 'returns false if it contains any toppings the developer dislikes' do
          pizza = Pizza.new("Custom", :pepperoni, :pineapple, :olives)
          subject.should_not be_satisfied_with(pizza)
        end
      end

      context "when the pizza does not contain any toppings the developer likes" do
        it 'returns false even if it does not contain any toppings the developer dislikes' do
          pizza = Pizza.new("Custom", :pineapple, :bacon)
          subject.should_not be_satisfied_with(pizza)
        end
      end
    end
  end
end
