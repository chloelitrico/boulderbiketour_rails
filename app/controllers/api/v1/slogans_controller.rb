module Api::V1
  class SlogansController < ApplicationController

    def index
      @slogans = Slogan.all
      render json: 'slogansList', props: { slogans: @slogans }
    end

    def new
      @slogan = Slogan.new
      render json: 'newSloganForm'
    end

    def create
      @slogan = Slogan.new(slogan_params)

      if @slogan.save
        render json: @slogan
      else
        render json: {error: "Error"}
      end
    end

    private

    def slogan_params
      params.require(:slogan).permit(:first_name, :last_name, :email, :description)
    end
  end
end
