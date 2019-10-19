class UsersController < ApplicationController
    def new
    end

    def create
        @user = User.create(user_params(:name, :password, :password_confirmation))
        if @user.valid?
            session[:user_id] = @user.id
        else
            redirect_to new_user_path
        end

    end

    private

    def user_params(*args)
        params.require(:user).permit(*args)
    end
end
