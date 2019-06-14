module Api::V1
    class RidersController < ApplicationController
      def index
        @riders = Rider.all
        render json: @riders
      end
    end
  end