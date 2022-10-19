class ActivitiesController < ApplicationController
    before_action :find_activity, only: [:show, :destroy] 
    def index
        render json: Activity.all, status: :ok
    end

    def show
        render json: @activity, status: :ok
    end

    def destroy
        @activity.destroy
        head :no_content
    end

    private
    def find_activity
        @activity = Activity.find(params[:id])
    end
end
