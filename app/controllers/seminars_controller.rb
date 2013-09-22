class SeminarsController < ApplicationController
  before_action :set_seminar, only: [:show, :edit, :update, :destroy]

  # GET /seminars
  # GET /seminars.json
  def index
    if params[:search]
      @seminars = Seminar.search params[:search]
    else
      @seminars = Seminar.all
    end
    # @tagsArray = params['blah']
    # @seminars = Seminar.all
    # @seminars = @seminars.tags.where("title" => { "$in" => @tagsArray });
  end

  # GET /seminars/1
  # GET /seminars/1.json
  def show
  end

  # GET /seminars/new
  def new
    @seminar = Seminar.new
  end

  # GET /seminars/1/edit
  def edit
  end

  def search
    @seminars = Seminar.search params[:search]
  end

  # POST /seminars
  # POST /seminars.json
  def create
    @seminar = Seminar.new(seminar_params)

    respond_to do |format|
      if @seminar.save
        format.html { redirect_to @seminar, notice: 'Seminar was successfully created.' }
        format.json { render action: 'show', status: :created, location: @seminar }
      else
        format.html { render action: 'new' }
        format.json { render json: @seminar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seminars/1
  # PATCH/PUT /seminars/1.json
  def update
    respond_to do |format|
      if @seminar.update(seminar_params)
        format.html { redirect_to @seminar, notice: 'Seminar was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @seminar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seminars/1
  # DELETE /seminars/1.json
  def destroy
    @seminar.destroy
    respond_to do |format|
      format.html { redirect_to seminars_url }
      format.json { head :no_content }
    end
  end

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
