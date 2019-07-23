require 'test_helper'

class SloganTest < ActiveSupport::TestCase
  test 'valid slogan' do
    slogan = Slogan.new(first_name: 'John', last_name:'Doe', email: 'john@example.com', description:'lorem ipsum')
    assert slogan.valid?
  end

  test 'invalid without first name' do
    slogan = Slogan.new(last_name:'Doe', email: 'john@example.com', description:'lorem ipsum')
    refute slogan.valid?, 'slogan is valid without a first name'
    assert_not_nil slogan.errors[:first_name], 'no validation error for first name present'
  end

  test 'invalid without last name' do
    slogan = Slogan.new(first_name: 'John', email: 'john@example.com', description:'lorem ipsum')
    refute slogan.valid?, 'slogan is valid without a last name'
    assert_not_nil slogan.errors[:last_name], 'no validation error for last name present'
  end

  test 'invalid without email' do
    slogan = Slogan.new(first_name: 'John', last_name:'Doe', description:'lorem ipsum')
    refute slogan.valid?
    assert_not_nil slogan.errors[:email]
  end

  test 'invalid without description' do
    slogan = Slogan.new(first_name: 'John', last_name:'Doe', email: 'john@example.com')
    refute slogan.valid?, 'slogan is valid without a first name'
    assert_not_nil slogan.errors[:description], 'no validation error for description present'
  end

end
