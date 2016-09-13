class PagesController < ApplicationController
  before_action :chef_check, only: [:index]
  def index
    
    
      
  end

  def about
  end

  private 
  
  def chef_check
    if !current_chef.nil?
      redirect_to recipes_path
    end
  end
end
