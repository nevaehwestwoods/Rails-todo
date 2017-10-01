class TodosController < ApplicationController
    def index
       @todos=Todo.all
    end
    
    def show
      @todo=Todo.find(params[:id])
    end
    def create
        todo=Todo.create(
            name: params[:name],
            description: params[:description],
            duration: params[:duration],
            complete: params[:complete],
            )
        redirect_to "/todos/#{todo.id}"    
    end
        def update
            todo=Todo.find(params[:id])
            todo.update(
                name: params[:name],
                description: params[:description],
                duration: params[:duration],
                complete: params[:complete]
                )
                redirect_to "/todos/#{todo.id}"
        end
        
end