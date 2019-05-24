require "google/cloud/translate"

class FlowersController < ApplicationController

  helper_method :update_all_languages


  def new
  end

  # GET /widgets
  # GET /widgets.json
  def index
    @flowers = Flower.all
  end

  # GET /widgets/1
  # GET /widgets/1.json
  def show
    p params
    @flower = Flower.find(params[:id])

  end

  def update

  end

  def create

    # p "=========="

    # params = flower_params

    # translate = Google::Cloud::Translate.new

    # params[:zh] = translate.translate flower_params[:en], to: "zh"
    # params[:jp] = translate.translate flower_params[:en], to: "jp"

    # p params

    @flower = Flower.new(flower_params)
    @flower.save

  end

  def update_translate
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def flower_params
      params.require(:flower).permit(:en, :zh, :jp, :scientific_name, :toxic)
    end  

end
