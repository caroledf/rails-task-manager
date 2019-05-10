class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

def new
   @tasks = Task.new
 end

 def create
   @tasks = Task.new(set_task)
   @tasks.save
   redirect_to tasks_path(@task)
 end

end
