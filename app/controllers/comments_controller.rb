class CommentsController < ApplicationController
    before_action :find_recipe
    before_action :find_comment, only: [:destroy,:edit,:update]
    def show
        
    end
    
    def create
        @comment = @recipe.comments.create(params[:comment].permit(:content))
        @comment.chef_id = current_chef.id
        @comment.save
        
        if @comment.save
           redirect_to recipe_path(@recipe)
        else
            render 'new'
        end
    end
    
    def edit
    end
    
    def update
        if @comment.update(params[:comment].permit(:content))
            redirect_to recipe_path(@recipe)
        else
            render 'edit'
        end
    end
    
    def destroy
        @comment.destroy
        redirect_to recipe_path(@recipe)
    end
    
    private
    
    def find_recipe
        @recipe =Recipe.find(params[:recipe_id])
    end
    
    def find_comment
       @comment = @recipe.comments.find(params[:id]) 
    end
end
