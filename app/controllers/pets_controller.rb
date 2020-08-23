class PetsController < ApplicationController

  def index
    @pets = Pet.all
  end

  def show
    @pet = Pet.find(params[:pet_id])
  end

  def new
    @shelter = Shelter.find(params[:shelter_id])
  end

  def create
    pet = Pet.new(pet_params)
    pet.save
    redirect_to "/shelters/#{pet_params[:shelter_id]}/pets"
  end

  def edit
    @pet = Pet.find(params[:pet_id])
  end

  def update
    @pet = Pet.find(params[:pet_id])
    @pet.update(pet_params)
    redirect_to "/pets/#{@pet.id}"
  end



  private
  def pet_params
    params.permit(:name, :image, :description, :approximate_age, :sex, :shelter_id)
  end
end
