class TasksController < ApplicationController
	before_action :tasks_nav, only: [:index]
  def index
  	@tasks = Task.all
  	@t = current_user.tasks.where(solutions:{completed: true})

  	
end

 def update
 	@task = Task.find(params[:id])

  	@solution = current_user.solutions.where(solutions:{completed:true, task_id: @task.id})

  	@solution = @solution.update(completed: false)
    redirect_to root_path, alert: 'La tarea no ha sido completada'
  	
 end
 
 private
   def task_params
    params.require(:task).permit(:title, :photo)
  end
end
