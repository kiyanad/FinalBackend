class Api::V1::UserHabitsController < ApplicationController
    # skip_before_action :authorized, only: [:get]

    def index
      # byebug
      @user_habits= current_user.user_habits
      @all_habits = @user_habits.map{|habit| UserHabitSerializer.new(habit)}
        # @user_habits = UserHabit.all.select{|habit| habit.user_id === current_user.id }
        render json: { user_habit: @all_habits}
    end

    def show
        @user_habit = UserHabit.find(params[:id])
        render json: {user_habit: @user_habit}
    end

    def create

        @user_habit = UserHabit.create(user_habit_params)
        render json: { user_habit: UserHabitSerializer.new(@user_habit)}, status: :created

    end

    def destroy
        @habit = UserHabit.find(params[:id])
        @habit.destroy
        render json: { habit: UserHabitSerializer.new(@habit)}, status: :created

    end

    private

    def user_habit_params
        params.require(:user_habit).permit(:id, :user_id, :habit_id, :status)
    end
end
