class SessionsController < ApplicationController

  def create
    if params[:name].blank?
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to secret_path
    end
  end

  def destroy
    session.clear
    redirect_to '/'
  end

end
