class UsrfavsController < ApplicationController
  before_action :set_usrfav, only: [:show, :edit, :update, :destroy]

  # GET /usrfavs
  # GET /usrfavs.json
  def index
    @usrfavs = Usrfav.all
  end

  # GET /usrfavs/1
  # GET /usrfavs/1.json
  def show
  end

  # GET /usrfavs/new
  def new
    @usrfav = Usrfav.new
  end

  # GET /usrfavs/1/edit
  def edit
  end

  # POST /usrfavs
  # POST /usrfavs.json
  def create
    @usrfav = Usrfav.new(usrfav_params)

    respond_to do |format|
      if @usrfav.save
        format.html { redirect_to @usrfav, notice: 'Usrfav was successfully created.' }
        format.json { render :show, status: :created, location: @usrfav }
      else
        format.html { render :new }
        format.json { render json: @usrfav.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usrfavs/1
  # PATCH/PUT /usrfavs/1.json
  def update
    respond_to do |format|
      if @usrfav.update(usrfav_params)
        format.html { redirect_to @usrfav, notice: 'Usrfav was successfully updated.' }
        format.json { render :show, status: :ok, location: @usrfav }
      else
        format.html { render :edit }
        format.json { render json: @usrfav.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usrfavs/1
  # DELETE /usrfavs/1.json
  def destroy
    @usrfav.destroy
    respond_to do |format|
      format.html { redirect_to usrfavs_url, notice: 'Usrfav was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usrfav
      @usrfav = Usrfav.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usrfav_params
      params.require(:usrfav).permit(:user_id, :route_id)
    end
end
