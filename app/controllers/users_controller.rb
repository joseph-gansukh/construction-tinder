class UsersController < ApplicationController    
    def index
      users = User.all
      render json: users 
    end

    def new
      user = User.create(user_params)
      render json: user
    end

    def show
      user = User.find(params[:id])
      render json: user
    end

    def update

    end

    private

    def user_params
        params.require(:user).permit(:name, :city, :phone, :email)
    end
end
