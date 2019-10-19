class SessionsController < ApplicationController
    def new

    end
    
    def create
        @user = User.find_by(name: params[:user][:name])
        unless @user.try(:authenticate, params[:user][:password])
            redirect_to login_user_path
        else
            session[:user_id] = @user.id
            redirect_to '/'
        end
    end

    def destroy
        session.delete :user_id
        redirect_to login_user_path
    end
end
