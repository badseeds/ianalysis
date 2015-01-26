class SessionsController < ApplicationController
  def new
 	@title = "Sign in"
 	render :new
  end

  def create
  	user = User.authenticate(params[:sessions][:email],
  		                     params[:sessions][:password])
  	if user.nil?
      flash.now[:error] = "Invalid email/password combination."
      @title = "Sign in"
  	  render :new
  	else
  		#handle successful 
  	end
  end

  def destroy
  end

end
