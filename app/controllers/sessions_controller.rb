class SessionsController < ApplicationController

  def create
    if params[:name] && !params[:name].empty?
      session[:name] = params[:name]
    else
      redirect_to '/'
    end
  end

  def destroy
    session[:name] = nil
  end

end
