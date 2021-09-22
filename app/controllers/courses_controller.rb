class CoursesController < ApplicationController

  def index
    @courses = Course.includes(:tutors)

    render json: @courses, include: ['tutors']
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      render json: @course, status: 200
    else
      render json: @course.errors, status: :unprocessable_entity
    end
  end

  private

    def set_course
      @course = Course.find(params[:id])
    end

    def course_params
      params.require(:course).permit(:title, :details, tutors_attributes: [:id, :name, :email])
    end
end
