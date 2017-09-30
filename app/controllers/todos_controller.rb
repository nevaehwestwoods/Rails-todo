class TodosController < ApplicationController
    def index
    end
    
    def show
         @todo = {
             id: params[:id] ,
            name: 'Wake up at 8am' , 
            description: 'Mon to Fri' , 
            duration: 15 
        }
    end
    
   
end