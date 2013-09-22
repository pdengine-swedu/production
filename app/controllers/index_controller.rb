class IndexController < ApplicationController
  before_action :set_seminar, only: [index]

  # GET /seminars
  # GET /seminars.json
  def index
    @tagsArray = params[:blah]
    @seminars = Seminar.all
    @tags = Tag.all
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
      params.permt(:blah)
    end
end
