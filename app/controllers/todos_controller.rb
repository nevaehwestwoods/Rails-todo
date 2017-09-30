class TodosController < ApplicationController
    def index
        @code_word= "#{params[:code]} #{params[:word]}"
    end
    
    def show
        id = params[:id]
        if id == '1'
            @todo = {
                id: id,
                name: 'Make the curriculum',
                duration: 60
            }
        elsif id == '2'
         @todo = {
             id: params[:id] ,
            name: 'Wake up at 8am' , 
            description: 'Mon to Fri' , 
            duration: 15 
            
        }
    else
        @todo ={}
        end
    end
end