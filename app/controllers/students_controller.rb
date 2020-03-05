class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end
  
  def new 
    @student = Student.create(first_name: params[:first_name], last_name: params[:last_name], active: params[:active])
    @student.save 
  end 

  def show
    @student = Student.find(params[:id])
  end
  
  def activate 
    @student = Student.find(params[:id])
    @student.active = !@student.active  
    @student.save 
    
       redirect_to student_path(@student)  
  end 

  private

    def set_student
      @student = Student.find(params[:id])
    end
end