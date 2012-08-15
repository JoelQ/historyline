class Api::CoursesController < ApplicationController
  def show
    @course = Course.find(params[:id])
  end
end
