class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def tasks_nav
  	@total = Task.count
  	 @taskC = current_user.tasks.where(solutions:{completed:true}).count
 end
end
