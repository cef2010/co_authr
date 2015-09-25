class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :turn_ons, :turn_offs, :university, :dept, :about_me, :matches, :email, :password, :password_confirmation)
  end
end
