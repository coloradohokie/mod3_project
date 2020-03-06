class TownsController < ApplicationController
    def index
        @towns = Town.all
        render json: @towns
    end

    def create
        @town = Town.create(
            name: params[:name]
        )
        redirect_to "http://localhost:3001/"
    end

end
