class TeachersController < ApplicationController

      def new

        @teacher = Teacher.new
        end
    def create
      @teacher = Teacher.new(teacher_params)
         if @teacher.save
         flash[:notice] = "Teacher saved successfully.#{@teacher.name}"
         redirect_to students_path
      else
        render 'new'
      end
    end

        private
        def  teacher_params
          params.require(:teacher).permit(:name, :email)

        end
      end
