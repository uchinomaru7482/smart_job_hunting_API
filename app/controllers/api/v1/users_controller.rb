module Api
  module V1
    class UsersController < ApplicationController
      def create
        user = User.new(user_params)
    
        if user.save
          session[:user_id] = user.id
          render json: { status: :created, user: user }
        else
          render json: { error: user.errors }
        end
      end
    
      def update
      end
    
      def delete
      end
    
      private
    
      def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
      end
    end
  end
end
