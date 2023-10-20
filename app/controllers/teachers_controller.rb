class TeachersController < ApplicationController
  def show
    @teacher = Teacher.find(params[:id])
    @students = @teacher.students
  end

  def new
    @teacher = Teacher.new
  end

  def index
    @teachers = Teacher.all
  end

  def create
    @teacher = Teacher.new(teacher_params)
        if @teacher.save
        flash[:notice] = "Teacher saved successfully.#{@teacher.name}"
        redirect_to @teacher
    else
      render 'new'
    end
  end

  def edit
    @teacher = Teacher.find(params[:id])
  end

  def update
    @teacher = Teacher.find(params[:id])
    if @teacher.update(teacher_params)
      flash[:notice]= "Teacher updated successfully#{@teacher.name}"
      redirect_to @teacher
    else
      flash[:notice]= "Validation errors: #{@teacher.errors.full_messages}"
      puts "Validation errors: #{@teacher.errors.full_messages}" # Add this line for debugging
      render 'edit'
    end
  end

  private
  def  teacher_params
    params.require(:teacher).permit(:name, :email ,  :profile_picture)
  end
end
