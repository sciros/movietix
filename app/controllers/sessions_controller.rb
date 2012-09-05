class SessionsController < ApplicationController
  def new
  end

  def create
    if user = User.find_by_login(params[:login]) then
      if user && user.authenticate(params[:password]) then
        session[:user_id] = user.id
        flash[:notice] = "Login successful!"
        redirect_back_or_default account_url
      else
        flash[:notice] = "bad credentials"
        redirect_back_or_default login_url
      end
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "Logout successful!"
    redirect_to login_url
  end
end