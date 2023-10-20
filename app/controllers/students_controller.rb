class StudentsController < ApplicationController


  before_action :set_student, only: [ :show,:edit, :update, :destroy]



  def index
    @student = Student.all
  end


  def new
    @student = Student.new
 end


 def create
  @student = Student.new(student_params)

  if @student.save
    flash[:notice] = "Action performed successfully"
    redirect_to students_path
  else
    render :new
    flash[:notice] = "Action  not performed successfully"
  end
 end

 def show


  end

  def edit

  end


   def update

    if @student.update(student_params)
      redirect_to students_path(@student)
    else
      render :edit
    end
  end


   #def destroy

    #    @student.destroy
     #   redirect_to students_path
      #end
      def destroy
        @student = Student.find(params[:id])
        if @student.destroy
          redirect_to students_path, notice: 'Student was successfully deleted.'
        else
          redirect_to students_path, alert: 'Failed to delete student.'
        end
      end


      def set_student
        @student = Student.find(params[:id])

      end







 private

 def student_params

    params.require(:student).permit(:student_id,:student_name ,:email, :document)
  end


end
