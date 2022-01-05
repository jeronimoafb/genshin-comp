class ElementsController < ApplicationController
  def index
    @elements = Element.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
