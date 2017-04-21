class DogController < ApplicationController
  def with_data
    @dogs = Dog.all
  end

  def no_data
    @dogs = Dog.all
  end

  def static_styled
    @dogs = Dog.all
  end

  def static_html_only
    @dogs = Dog.all
  end

  def new
    @dog = Dog.new
  end

  def create
     @dog = Dog.new(dog_params)

     if @dog.save
        redirect_to :action => 'with_data'
     else
        render :action => 'new'
     end

  end

  def dog_params
     params.require(:dog).permit(:name, :breed)
  end
end
