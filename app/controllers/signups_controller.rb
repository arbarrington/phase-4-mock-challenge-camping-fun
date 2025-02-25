class SignupsController < ApplicationController
    def index
        render json: Signup.all, status: :ok
    end
    
    def create
        signup = Signup.create!(signup_params)
        render json: signup, status: :created
    end

    private
    def signup_params
        params.permit(:time, :camper_id, :activity_id)
    end

end
