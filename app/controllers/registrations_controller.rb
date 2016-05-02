class RegistrationsController < Devise::RegistrationsController
    
    private

    # This method is responsible for signing up the users but this time with that extra username field.
	def sign_up_params
		params.require(:user).permit(:email, :password, :password_confirmation, :username)
	end

    #This method is responsible for editing the users accounts. 
	def account_update_params
		params.require(:user).permit(:email, :password, :password_confirmation, :username, :current_password, :age, :bio, :gender)
	end

end