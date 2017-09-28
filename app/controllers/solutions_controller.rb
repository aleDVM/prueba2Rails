class SolutionsController < ApplicationController
	before_action :authenticate_user!	
	before_action :tasks_nav, only: [:index, :create]

  def create
    @task = Task.find(params[:task_id])
  	@solution = Solution.create(task_id: @task.id, user_id: current_user.id, completed: true)
  	if @solution.save
  		redirect_to root_path, alert: 'La tarea ha sido completada'
  	else
  		redirect_to new_user_registration_path
  	end

  end


  def index
    @task = Task.find(params[:task_id])
  	@users = User.select(:name).distinct.joins(:tasks, :solutions).where(solutions:{completed: true}, tasks:{id: @task})
    @users3 = User.select(:name).select(:photo).distinct.joins(:tasks, :solutions).where(solutions:{completed:true}, tasks:{id:@task}).limit(5)

  
  end


  def set_solution
  	@solution = Solution.find(params[:task_id, :user_id])
  end
  private
  def solution_params
    params.require(:solution).permit(:task_id, :user_id, :completed)
  end
end