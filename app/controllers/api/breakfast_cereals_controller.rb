class Api::BreakfastCerealsController < ApplicationController
  def index
    @breakfast_cereals = BreakfastCereal.all
    render "index.json.jbuilder"
  end
end
