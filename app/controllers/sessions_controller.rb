class SessionsController < ApplicationController

  def hello

  end
  def new
  end

  def create
    if params[:name] && params[:name] != ""
    session[:name] = params[:name]
    redirect_to root_path
  else
    redirect_to login_path
  end

  end

  def destroy
    if session[:name]
    session.delete :name
    redirect_to root_path
    else
      redirect_to root_path
    end
  end

end
