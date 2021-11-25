module Api
  module V1
    class SessionsController < ApplicationController
      def create
        session[:user_id] = 1
        redirect_to "http://lvh.me:8080/authTest"
      end
      def show
        # byebug
        render json: session[:user_id]
      end
      def destroy
        reset_session
        head :ok
      end
    end
  end
end
