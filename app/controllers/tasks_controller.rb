class TasksController < ApplicationController
    before_action set_task only:[:show, :edit, :update, :destroy]
    # READ
    def index
        @tasks = Task.all
    end

    def show
    end

    # CREATE
    def new
        @task = task.new
    end

    def create
        @task = task.new(params(task_params))
    end

    # UPDATE
    def edit
    end

    def update
        @task.update(params(task_params))
    end

    # DELETE
    def destroy
        @task.destroy
    end
    private
    def task_params
        return params.require(:task).permit(:title, :details, :completed)
    end
    def set_task
        @task = Task.find(params[:id])
    end
end
