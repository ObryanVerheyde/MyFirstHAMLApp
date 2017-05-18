class PopAppelsController < ApplicationController
  before_action :set_pop_appel, only: [:show, :edit, :update, :destroy]

  # GET /pop_appels
  # GET /pop_appels.json
  def index
    @pop_appels = PopAppel.all
  end

  # GET /pop_appels/1
  # GET /pop_appels/1.json
  def show
  end

  # GET /pop_appels/new
  def new
    @pop_appel = PopAppel.new
  end

  # GET /pop_appels/1/edit
  def edit
  end

  # POST /pop_appels
  # POST /pop_appels.json
  def create
    @pop_appel = PopAppel.new(pop_appel_params)

    respond_to do |format|
      if @pop_appel.save
        format.html { redirect_to @pop_appel, notice: 'Pop appel was successfully created.' }
        format.json { render :show, status: :created, location: @pop_appel }
      else
        format.html { render :new }
        format.json { render json: @pop_appel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pop_appels/1
  # PATCH/PUT /pop_appels/1.json
  def update
    respond_to do |format|
      if @pop_appel.update(pop_appel_params)
        format.html { redirect_to @pop_appel, notice: 'Pop appel was successfully updated.' }
        format.json { render :show, status: :ok, location: @pop_appel }
      else
        format.html { render :edit }
        format.json { render json: @pop_appel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pop_appels/1
  # DELETE /pop_appels/1.json
  def destroy
    @pop_appel.destroy
    respond_to do |format|
      format.html { redirect_to pop_appels_url, notice: 'Pop appel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pop_appel
      @pop_appel = PopAppel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pop_appel_params
      params.require(:pop_appel).permit(:lastname, :firstname, :presence)
    end
end
