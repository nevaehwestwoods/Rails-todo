class TodosController < ApplicationController
    def index
        @code_word= "#{params[:code]} #{params[:word]}"
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
end