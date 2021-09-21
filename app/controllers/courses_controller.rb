class CoursesController < ApplicationController

  def index
    @courses = Course.includes(:tutors)

    render json: @courses
  end

  def create
    @course = Course.new(course_params)

    if @course.save
      render json: @course, status: :created, location: @course
    else
      render json: @course.errors, status: :unprocessable_entity
    end
  end

  private

    def set_course
      @course = Course.find(params[:id])
    end

    def course_params
      params.require(:course).permit(:name, :details, tutors_attributes: [:name, :email])
    end
end
