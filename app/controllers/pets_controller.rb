class PetsController < ApplicationController
def index
  @pets = Pet.all
end

  def new
    @pets = Pet.new
  end 

def create
  Pet.create(pets_params)
  redirect_to root_path
end

private

def pets_params
  params.require(:pets).permit(:name, :comment)
end
  
end
