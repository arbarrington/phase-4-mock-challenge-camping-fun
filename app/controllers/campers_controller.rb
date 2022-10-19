class CampersController < ApplicationController
    before_action :find_camper, only: [:show, :update, :destroy]
    
    def index
        render json: Camper.all, status: :ok
    end

    def show
        render json: @camper, serializer: CamperActivitySerializer
    end

    def create
        camper = Camper.create!(camper_params)
        render json: camper, status: :created
    end

    def update
        @camper.update!(camper_params)
        render json: @camper, status: :accepted
    end

    def destroy
        @camper.destroy
        head :no_content
    end

    private

    def camper_params
        params.permit(:name, :age)
    end

    def find_camper
    @camper = Camper.find(params[:id])
    end
end
