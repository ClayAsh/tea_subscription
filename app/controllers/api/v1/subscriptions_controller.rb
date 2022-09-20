class Api::V1::SubscriptionsController < ApplicationController

  def index 
    customer = Customer.find(params[:customer_id])
    render json: SubscriptionSerializer.new(customer.subscriptions)
  end

  def create 
    render json: SubscriptionSerializer.new(Subscription.create(subscription_params)), status: :created
  end

  def update
    subscription = Subscription.find(params[:id])
    if subscription.update(subscription_params)
      render json: SubscriptionSerializer.new(subscription)
    else 
      render status: 404
    end 
  end

  private 

  def subscription_params
    params.permit(:title, :price, :status, :frequency, :tea_id, :customer_id)
  end
end