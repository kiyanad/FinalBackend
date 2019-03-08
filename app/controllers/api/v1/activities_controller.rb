class Api::V1::ActivitiesController < ApplicationController
  def index
      @activities = Activity.all
      render json: { habit: @activities}
  end

  def show
      @activity = Activity.find(params[:id])
      render json: {activity: @activity}
  end
end
