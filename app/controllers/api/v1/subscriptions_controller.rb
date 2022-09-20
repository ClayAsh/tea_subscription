class Api::V1::SubscriptionsController < ApplicationController

  def index 
    customer = Customer.find(params[:customer_id])
    render json: SubscriptionSerializer.new(customer.subscriptions)
  end

  def create 
    # customer = Customer.find(params[:customer_id])
    # tea = Tea.find(params[:tea_id])
    render json: SubscriptionSerializer.new(Subscription.create(subscription_params)), status: :created
  end

  def update
    #find subscription where customer id && tea id, change status to "Cancelled"
  end

  private 

  def subscription_params
    params.permit(:title, :price, :status, :frequency, :tea_id, :customer_id)
  end
end