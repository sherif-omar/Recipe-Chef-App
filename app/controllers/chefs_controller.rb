class ChefsController < ApplicationController
    before_action :find, only: [:edit,:show]
    def edit
    end
    
    def show
    end
        
   def index
       @chefs=Chef.all
   end

    def find
       @chef = Chef.find(params[:id]) 
    end
  
    
end