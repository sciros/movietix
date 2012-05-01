class SessionsController < ApplicationController
  def new
  end

  def create
    puts "BAOOOSH!"
    if user = User.find_by_login(params[:login]) then
      puts "HERE!2342342"
      if user && user.authenticate(params[:password]) then
        puts "OOSH!!"
        session[:user_id] = user.id
        flash[:notice] = "Login successful!"
        puts "BATMAN"
        redirect_back_or_default account_url
      else
        render "new"
      end
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "Logout successful!"
    redirect_back_or_default login_url
  end
end