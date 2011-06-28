class SessionsController < ApplicationController
  def new
		@title = "Sign In"
  end
	
	def create
		user = User.authenticate(params[:session][:email], params[:session][:password])
		if user.nil?
			flash.now[:error] = "Invalid email/password combination."
			@title = "Sign In"
			render 'new'
		else
			#sign in and redirect to show page
		end
	end
	
	def destroy
	end

end
