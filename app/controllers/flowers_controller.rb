class FlowersController < ApplicationController
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

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def widget_params
      params.require(:flower).permit(:en, :scientific_name, :toxic)
    end  

end
