class Api::BreakfastCerealsController < ApplicationController
  def index
    @breakfast_cereals = BreakfastCereal.all
    render "index.json.jbuilder"
  end

  def show
    @breakfast_cereal = BreakfastCereal.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def create
    @breakfast_cereal = BreakfastCereal.new(
      toy: params[:toy],
      company: params[:company],
      name: params[:name],
      sugar: params[:sugar]
    )
    @breakfast_cereal.save
    render "show.json.jbuilder"
  end

  def update
    @breakfast_cereal = BreakfastCereal.find_by(id: params[:id])
    @breakfast_cereal.update(
      toy: params[:input_toy],
      company: params[:input_company],
      name: params[:input_name],
      sugar: params[:input_sugar]
    )
    render "show.json.jbuilder"
  end

  def destroy
    @breakfast_cereal = BreakfastCereal.find(params[:id])
    @breakfast_cereal.destroy
    render "destroy.json.jbuilder"
  end
end
