Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do 
    namespace :v1 do 

      patch '/subscriptions/cancel', to: 'subscriptions#update' 

      get '/customer/subscriptions', to: 'subscriptions#index'
# make index a customer resource 
      resources :subscriptions, only: %i[create] 
    end
  end
end
