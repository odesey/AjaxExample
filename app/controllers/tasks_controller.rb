class TasksController < ApplicationController

  def search
    search_term = params["search_term"]
    @tasks = Task.where(:title => search_term)
    render :json => @tasks
  end

end
