class Api::BreakfastCerealsController < ApplicationController
  def index
    @breakfast_cereals = BreakfastCereal.all
    render "index.json.jbuilder"
  end

  def show
    @breakfast_cereal = BreakfastCereal.find_by(id: params[:id])
    render "show.json.jbuilder"
  end
end
