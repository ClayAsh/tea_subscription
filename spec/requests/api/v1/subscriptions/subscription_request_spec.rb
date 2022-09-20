require 'rails_helper'

RSpec.describe "Subscription endpoints" do 
  it 'can list all subscriptions' do 
    customer = create(:customer)
    customer2 = create(:customer)

    tea = create(:tea)
    create_list(:subscription, 5, customer_id: customer.id, tea_id: tea.id)

    get '/api/v1/subscriptions', params: { customer_id: customer.id }

    subscriptions = JSON.parse(response.body, symbolize_names: true)

    expect(response).to be_successful 
    expect(subscriptions).to be_a(Hash)
    expect(subscriptions[:data].count).to eq(5)

    first = subscriptions[:data].first

    expect(first).to include(:id)
    expect(first).to include(:type)
    expect(first).to include(:attributes)
    expect(first[:attributes]).to include(:title)
    expect(first[:attributes]).to include(:price)
    expect(first[:attributes]).to include(:status)
    expect(first[:attributes]).to include(:frequency)
    expect(first[:attributes][:tea_id]).to eq(tea.id)
    expect(first[:attributes][:customer_id]).to eq(customer.id)
  end

  it 'can create new subscription' do 
    customer = create(:customer)
    tea = create(:tea)
    
    subscription_params = { 
                        customer_id: customer.id, 
                        tea_id: tea.id,
                         title: "Professional",
                         price: 17.89,
                         status: "Active",
                         frequency: "Annual"
                      }

    post '/api/v1/subscriptions', params: subscription_params

    subscription = JSON.parse(response.body, symbolize_names: true)
    # require 'pry'; binding.pry

    expect(response).to be_successful 
    expect(subscription).to be_a(Hash)

    expect(subscription[:data]).to include(:id)
    expect(subscription[:data]).to include(:type)
    expect(subscription[:data]).to include(:attributes)

    attributes = subscription[:data][:attributes]

    expect(attributes).to include(:title)
    expect(attributes).to include(:price)
    expect(attributes).to include(:status)
    expect(attributes).to include(:frequency)
    expect(attributes).to include(:tea_id)
    expect(attributes).to include(:customer_id)
  end
end