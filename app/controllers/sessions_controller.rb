class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name] == nil
      redirect_to '/login'
    elsif params[:name].empty?
      redirect_to '/login'
    elsif params[:name]
      session[:name] = params[:name]
      redirect_to '/'
    elsif !session[:name]
      redirect_to '/login'
    elsif session[:name]
      redirect_to '/'
    end
  end

  def destroy
    session.delete(:name)
  end

end
