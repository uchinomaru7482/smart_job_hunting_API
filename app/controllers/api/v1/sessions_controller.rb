module Api
  module V1
    class SessionsController < ApplicationController
      def create
        user = User.find_by(email: session_params[:email])

        if user&.authenticate(session_params[:password])
          session[:user_id] = user.id
          render json: { logged_in: true, user: user }
        else
          render jdon: { status: 401, errors: ["認証に失敗しました"]}
        end
      end

      def destroy
        reset_session
        render json: { status: 200, logged_out: true }
      end

      def logged_in
        if current_user
          render json: { logged_in: true, user: current_user }
        else
          render json: { logged_in: false }
        end
      end

      private

      def session_params
        params.require(:user).permit(:email, :password)
      end
    end
  end
end
