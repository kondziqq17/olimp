require 'rails_helper'

RSpec.describe Property, type: :model do
  describe 'validations' do
    it 'is valid with valid attributes' do
      user = User.create(email: 'user@example.com', password: 'password')
      property = Property.new(title:'Spacious Apartment', description:'App', address:'Poland, Czestochowa', price: 250000, number_of_bedrooms: 4, user: user)
      expect(property).to be_valid
    end


    it 'is not valid without title' do
      property = Property.new(title: nil, description: 'App', address:'Poland, Czestochowa', price: 250000, number_of_bedrooms: 4 )
      property.valid?
      expect(property.errors.full_messages).to include("Title can't be blank")
    end

    it 'is not valid without description' do
      property = Property.new(title:'Spacious Apartment', description: nil, address:'Poland, Czestochowa', price: 250000, number_of_bedrooms: 4 )
      property.valid?
      expect(property.errors.full_messages).to include("Description can't be blank")
    end

    it 'is not valid without address' do
      property = Property.new(title:'Spacious Apartment', description: 'App', address:nil, price: 250000, number_of_bedrooms: 4 )
      property.valid?
      expect(property.errors.full_messages).to include("Address can't be blank")
    end

    it 'is not valid without price' do
      property = Property.new(title:'Spacious Apartment', description: 'App', address:'Poland, Czestochowa', price: nil, number_of_bedrooms: 4 )
      property.valid?
      expect(property.errors.full_messages).to include("Price can't be blank")
    end

    it 'is not valid without number of bedrooms' do
      property = Property.new(title:'Spacious Apartment', description: 'App', address:'Poland, Czestochowa', price: 250000, number_of_bedrooms: nil )
      property.valid?
      expect(property.errors.full_messages).to include("Number of bedrooms can't be blank")
    end
  end
end
