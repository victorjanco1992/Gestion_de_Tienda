class ApplicationController < ActionController::Base
    
    before_action :authenticate_user!
    skip_before_action :verify_authenticity_token
    layout :layout_by_resource

  
    private
  
    def layout_by_resource
      if devise_controller?
        "devise"
      else
        "application"
      end
    end
  
end
