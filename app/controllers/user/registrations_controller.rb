class User::RegistrationsController < Devise::RegistrationsController
  before_filter :configure_permitted_parameters

  protected
  def configure_permitted_parameters
    #devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
    #devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name])
    devise_parameter_sanitizer.permit(:sign_up){ |u| u.permit({roles: []}, :email, :first_name, :last_name, :password, :password_confirmation, :current_password) }
    devise_parameter_sanitizer.permit(:account_update){ |u| u.permit({roles: []}, :email, :first_name, :last_name, :password, :password_confirmation, :current_password) }
  end
end
