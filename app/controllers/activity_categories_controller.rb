class ActivityCategoriesController < ApplicationController

    def create
        activity_category = ActivityCategory.new(activity_id: params[:activity_id], category_id: params[:category_id])
        if activity_category.save
            render json: activity_category
        else
            render json: {error: 'There was an error'}
        end
    end
    
end
