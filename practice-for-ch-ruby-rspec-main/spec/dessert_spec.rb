require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }

  describe "#initialize" do
    it "sets a type" do
      expect brownie.type. to eq("brownie")
    end

    it "sets a quantity" do
      expect brownie.quantity. to eq("10")
    end

    it "starts ingredients as an empty array" do
      expect brownie.ingredients. to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do
      expect {Dessert.new("brownie", "tons")}. to raise_error("Amount not a number")
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      expect (dessert.ingredients). to include("milk")
    end

  end

  describe "#mix!" do
    it "shuffles the ingredient array" do 
      expect dessert.ingredient.shuffle
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      expect brownie.quantity

    it "raises an error if the amount is greater than the quantity" do
      expect {Dessert.new("brownie", 5)}
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name"
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end