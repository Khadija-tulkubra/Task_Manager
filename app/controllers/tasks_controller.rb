class TasksController < ApplicationController
    before_action :authenticate_user!
    before_action :set_task, only: [:show, :edit, :update, :destroy]
  
    
    def index
  @tasks = Task.all
end

    def show
    end
  
    def new
      @task = current_user.tasks.build
    end
  
    def create
      @task = current_user.tasks.build(task_params)
      if @task.save
        redirect_to tasks_path, notice: 'Task was successfully created.'
      else
        render :new
      end
    end
  
    def edit
    end
  
    def update
      if @task.update(task_params)
        redirect_to tasks_path, notice: 'Task was successfully updated.'
      else
        render :edit
      end
    end
  
  
#    def destroy
#   @task = Task.find(params[:id])
#   @task.destroy
#   redirect_to tasks_path, notice: "Task was successfully deleted."
# end
def destroy
  @task = Task.find(params[:id])
  if @task.destroy
    flash[:notice] = "Task deleted successfully."
  else
    flash[:alert] = "Failed to delete task."
  end
  redirect_to tasks_path
end



  
    private
  
    def set_task
      @task = current_user.tasks.find(params[:id])
    end
  
    def task_params
      params.require(:task).permit(:title, :description, :due_date, :status)
    end
  end
  
