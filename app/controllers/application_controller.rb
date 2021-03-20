class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def configure_permitted_parameters
    devise_parameter_sanitize.permit(
      :sign_up,keys: [:nickname, :email, :birth_date, :first_name, :last_name, :first_name_kana, :last_name_kana]
    )
  end

end
