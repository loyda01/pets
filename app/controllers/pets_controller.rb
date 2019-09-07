class PetsController < ApplicationController
def index
  @pet = Pet.all
end

  def new
    @pet = Pet.new
  end 

def create
  @pet = Pet.create(pet_params)
  if @pet.invalid?
    flash[:error] = 'Could not save comment.'
  end
  redirect_to root_path
end

private

def pet_params
  params.require(:pet).permit(:name, :comment)
  

end
  
end
