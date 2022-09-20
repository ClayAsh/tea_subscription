FactoryBot.define do
  factory :subscription do
    title { Faker::Subscription.plan }
    price { Faker::Commerce.price }
    status { "Inactive" }
    # status { Faker::Subscription.status }
    frequency { Faker::Subscription.payment_term }
  end
end