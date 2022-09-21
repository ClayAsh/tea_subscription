module ExceptionHandler 
  extend ActiveSupport::Concern 

  included do 
    rescue_from ActiveRecord::RecordNotFound do |e|
      json_response({ message: e.message }, 404 )
    end
  end 
end