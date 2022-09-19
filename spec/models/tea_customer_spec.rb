require 'rails_helper'

RSpec.describe TeaCustomer, type: :model do
  it { should validate_presence_of(:title) }  
  it { should validate_presence_of(:price) } 
  it { should validate_presence_of(:status) } 
  it { should validate_presence_of(:frequency) } 
  it {should belong_to(:tea) } 
  it {should belong_to(:customer) } 
end
