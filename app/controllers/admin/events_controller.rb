class Admin::EventsController < ApplicationController

  def show
    @event = Event.find(params[:id])
  end

  def new
    @course = Course.find(params[:course_id])
    @event = Event.new
  end

  def edit
    @course = Course.find(params[:course_id])
    @event = Event.find(params[:id])
  end

  def create
    @event = Course.new(params[:event].merge({course_id: params[:course_id]}))
    if @event.save
      redirect_to admin_course_path(params[:course_id])
    else
      @course = Course.find(params[:course_id])
      render :new
    end
  end

  def update
    @event = Event.find(params[:id])
    if @event.update_attributes(params[:event])
      redirect_to admin_course_path(params[:course_id])
    else
      @course = Course.find(params[:course_id])
      render :edit
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to admin_course_path(params[:course_id])
  end
end
