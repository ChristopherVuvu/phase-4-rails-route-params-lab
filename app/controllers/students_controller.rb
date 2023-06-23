class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end

  #use params to find the specific student id
  def show
    student = Student.find(params[:id])
    render json: student
  end
end
