class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    
    protect_from_forgery with: :exception
    include SessionsHelper
    
    rescue_from ActiveRecord::RecordNotFound do
        flash[:warning] = 'Resource not found.'
        redirect_back_or root_path
    end

    def redirect_back_or(path)
        redirect_to request.referer || path
    end
    
    protected
    
    def configure_permitted_parameters
     devise_parameter_sanitizer.for(:sign_up) << :name
     devise_parameter_sanitizer.for(:account_update) << :name
    end
end
