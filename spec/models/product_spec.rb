require 'rails_helper'

RSpec.describe Product, type: :model do
  before(:each) do
    @category = Category.new(name: 'furniture')
    @product = Product.new(name: 'big comfy couch', price: 1000000, quantity: 2, category: @category)
  end

  describe 'Validations' do
    it 'should save a valid product' do
      expect(@product).to (be_valid)
    end

    it 'should not save without valid name' do
      @name = Product.new(name: nil)
      expect(@name).to_not (be_valid)
    end

    it 'should not save without valid price' do
      @price = Product.new(price: nil)
      expect(@price).to_not (be_valid)
    end

    it 'should not save without valid quantity' do
      @quantity = Product.new(quantity: nil)
      expect(@quantity).to_not (be_valid)
    end

    it 'should not save without valid category id' do
      @category = Product.new(category: nil)
      expect(@category).to_not (be_valid)
    end
  end
end