class Customer < ApplicationRecord
  validates_presence_of :first_name,
                        :last_name,
                        :email,
                        :address 
  has_many :tea_customers 
  # has_many :teas, through: :tea_customers
end
