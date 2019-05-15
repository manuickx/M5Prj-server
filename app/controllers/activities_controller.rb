class ActivitiesController < ApplicationController

    def index
        activities = Activity.all
        render json: activities
    end

    def create
        activity = Activity.new(name: params[:name], provider_id: params[:provider_id])
        if activity.save
            render json: activity
        else
            render json: {error: 'There was an error'}
        end
    end

end
