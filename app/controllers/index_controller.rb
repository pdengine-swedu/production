class IndexController < ApplicationController
  before_action :set_seminar, only: []

  # GET /seminars
  # GET /seminars.json
  def index
    @seminars = Seminar.all
  end

#  def search
#    @seminars = Seminar.search params[:search]
#  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seminar
      @seminar = Seminar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seminar_params
      params.require(:seminar).permit(:description, :title)
    end
end
