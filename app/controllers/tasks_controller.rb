class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def show
    @task = Task.find(params[:id])
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to task_path
  end

  def edit
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def delete
    @task.destroy
    redirect_to tasks_path
  end

end



