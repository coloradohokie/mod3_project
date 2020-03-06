class PathsController < ApplicationController
    def index
        @paths = Path.all
        @paths = @paths.filter_by_town(params[:town_id]) if params[:town_id].present?
        render json: @paths
    end

    def create
        destination = Town.find(params[:end_point])

        @path = Path.create(
            town_id: params[:start_point],
            destination: destination.name,
            overview: params[:overview],
            description: params[:description],
            difficulty: params[:difficulty],
            url: params[:url],
            distance: params[:distance],
            time: params[:time]
        )
        redirect_to 'http://localhost:3001/index.html'
    end

    def show
        @path = Path.find(params[:id])
        render json: @path
    end

    def update
        destination = Town.find(params[:end_point])
        @path = Path.find(params[:id])
        @path.update(
            town_id: params[:start_point],
            destination: destination.name,
            overview: params[:overview],
            description: params[:description],
            difficulty: params[:difficulty],
            url: params[:url],
            distance: params[:distance],
            time: params[:time]
            )
    
        redirect_to "http://localhost:3001/show.html?id=#{@path.id}"

    end

end
