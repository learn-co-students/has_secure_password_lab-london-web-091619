class SessionsController < ApplicationController
  def create
    unless (@user = User.find_by(name: params[:user][:name])) &&
           @user.authenticate(params[:user][:password])
      return head(:forbidden)
    end

    session[:user_id] = @user.id
  end
end
