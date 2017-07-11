require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) do
    @user = User.new(name: 'Joel', email: 'joel@joel.joel', password: 'hello', password_confirmation: 'hello')
  end

  describe 'Validations' do

    it 'should have matching passwords' do
      user = User.new(
        name: 'Joel', 
        email: 'joel@joel.joel', 
        password: 'hello', 
        password_confirmation: 'hi'
        )
      expect(user.valid?).to be false
    end

    it 'should have valid email' do
      @user.email = nil
      expect(@user.valid?).to be false
    end

    it 'should not save without valid name' do
      @user.name = nil
      expect(@user.valid?).to be false
    end

    it 'should have unique email' do
      @user.save
      @userNew = User.new(
        name: 'Joel', 
        email: 'JOEL@JOEL.JOEL', 
        password: 'hello', 
        password_confirmation: 'hello'
      )
      expect(@userNew.valid?).to be false
    end

    it 'should have password minimum 5 char' do
      @user.password = 'hi'
      expect(@user.valid?).to be false
    end 
  end  

  describe '.authenticate_with_credentials' do
    it 'should not care about case when searching by email' do
      @user.save
      expect(User.find_by_email_ignore_case('joeL@JOel.joel')).to_not eql(nil)
    end
    
    it 'should have authenticated email and password' do
      @user.save
      expect(User.authenticate_with_credentials(' joel@joel.joel', 'hello')).to_not eql(nil)
    end
  end
end
