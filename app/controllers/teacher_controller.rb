class TeacherController < ApplicationController
  def index
  	@teachers = User.where(user_type: 1)
  end

  def show
  	@teacher = User.find(params[:id])
  end

  def dashboard
  end
end
