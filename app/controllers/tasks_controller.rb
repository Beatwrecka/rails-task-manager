class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @tasks = tasks.find(params[:id])
  end

  def new
    @tasks = Task.new

  end

  def edit
    @tasks = Task.find(params[:id])
  end

  def update
    @tasks = Task.find(params[:id])
    @tasks.update(params[:task])
    redirect_to task_path(@task)
  end
end
