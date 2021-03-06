class TasksController < ApplicationController
    def index
        @task = Task.all
    end
    def new
        @task = Task.new
    end
    def create
        @task = Task.new(task_params)
        if @task.save
            redirect_to root_path
        else
            render 'new'
        end
    end

    def destroy
        @task = Task.find(params[:id])
        @task.destroy
        redirect_to root_path
    end

    private
        def task_params
            params.permit(:username, :content)
        end
end