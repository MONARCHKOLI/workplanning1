class ShiftsController < ApplicationController
    def new
        @shift = Task.new
    end

    def create
        @worker = Worker.find(params[:id])
        @shift = @worker.shift.create(task_params)
    end

    private
    def task_params
        params.require(:task).permit(:shift,date,:status)
    end
end
