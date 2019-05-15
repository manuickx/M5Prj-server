class UserActivitiesController < ApplicationController

    def index
        user_activities = UserActivity.all
        render json: user_activities
    end

    def create
        user_activity = UserActivity.new(user_id: params[:user_id], activity_id: params[:activity_id])
        if user_activity.save
            render json: user_activity
        else
            render json: {error: "Activity could not be saved"}
        end
    end

end
