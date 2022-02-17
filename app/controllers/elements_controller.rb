class ElementsController < ApplicationController
  def index
    @elements = Element.all
  end

  def show
    @element = Element.find(params[:id])
  end

  def new
    @element = Element.new
  end

  def create
    @element = Element.new(params.require(:element).permit(:name))
    if @element.save
      redirect_to elements_path
    else 
      render :new
    end
  end

  def edit
    @element = Element.find(params[:id])
  end

  def update 
    @element = Element.find(params[:id])
    if @element.update(params.require(:element).permit(:name))
      redirect_to elements_path
    else
      render :edit
    end
  end

  def destroy
    @element = Element.find(params[:id])
    if @element.destroy
      redirect_to elements_path
    end
  end
end
