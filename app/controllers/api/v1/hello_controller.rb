module Api
  module V1
    class HelloController < ApplicationController
      def show
        render json: "hello!!"
      end
    end
  end
end