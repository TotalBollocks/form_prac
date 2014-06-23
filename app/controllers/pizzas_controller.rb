class PizzasController < ApplicationController
  def index
  end

  def show
  end

  def new
    @pizza = Pizza.new(name: 'pepperoni')
  end

  def edit
    @pizza = Pizza.find 1
  end
end
