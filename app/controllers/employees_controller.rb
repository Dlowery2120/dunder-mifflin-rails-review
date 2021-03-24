class EmployeesController < ApplicationController

    def index
        @employees = Employee.all
    end

    def show 
        @employee = Employee.find(params[:id])
    end

    def new
        @employee = Employee.new
        @dogs = Dog.all
    end

    def create
       
        @employee = Employee.new(employee_params)
        @employee.save

        redirect_to @employee
    end

    def edit 
        @employee = Employee.find(params[:id])
        @dogs = Dog.all
    end

    def update
        @employee = Employee.find(params[:id])
        
        aliases = @employees.all.map {|e| e.alias}.uniq
            if aliases.include?(params[:alias])
                render :edit
            else
                @employee.update(employee_params) 
                redirect_to @employee       
            end
    end
 
    

    private

    def employee_params
        params.require(:employee).permit(
            :first_name,
            :last_name,
            :alias,
            :title,
            :office,
            :dog_id,
            :img_url
        )
    end
end
