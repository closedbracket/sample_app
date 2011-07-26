class SessionsController < ApplicationController
  def new
    @title ="Sign in"
  end

  def create
    user = User.authenticate(params[:session][:email],
                             params[:session][:passsword])
    if user.nil?
      flash.now[:error] = "Invalid email/password combination"
      @title = "Sign in"
      render 'new'
    else
      #Handle success
    end
  end

  def destroy
    
  end

end
