require 'rails_helper'

RSpec.describe Product, type: :model do
  before(:each) do
    @category = Category.new(name: 'furniture')
    @product = Product.new(name: 'big comfy couch', price_cents: 1000000, quantity: 2, category: @category)
  end

  describe 'Validations' do
    it 'should save a valid product' do
      @product.save
    end

    it 'should not save without valid name' do
      @product.name = nil
      expect(@product.valid?).to be false 
    end

    it 'should not save without valid price' do
      @product.price_cents = nil
      expect(@product.valid?).to be false
    end

    it 'should not save without valid quantity' do
      @product.quantity = nil
      expect(@product.valid?).to be false
    end

    it 'should not save without valid category' do
      @product.category = nil
      expect(@product.valid?).to be false
    end
  end
end