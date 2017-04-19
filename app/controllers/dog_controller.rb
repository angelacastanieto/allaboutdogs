class DogController < ApplicationController
  def list
    @dogs = Dog.all
  end

  def new
    @dog = Dog.new
  end

  def create
     @dog = Dog.new(dog_params)

     if @dog.save
        redirect_to :action => 'list'
     else
        render :action => 'new'
     end

  end

  def dog_params
     params.require(:dog).permit(:name, :breed)
  end
end
