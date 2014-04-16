class SessionsController < ApplicationController
  
  def new  #no need to instantiate a new 'session' by creating a new instance
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to products_url, :notice => "Logged in!"
    else
      flash.now[:alert] = "Invalid email or password"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to products_url, :notice => "Logged out!"
  end

end
