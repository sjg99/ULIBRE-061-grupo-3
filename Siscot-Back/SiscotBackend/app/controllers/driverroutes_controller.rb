class DriverroutesController < ApplicationController
  before_action :set_driverroute, only: [:show, :edit, :update, :destroy]

  # GET /driverroutes
  # GET /driverroutes.json
  def index
    @driverroutes = Driverroute.all
  end

  # GET /driverroutes/1
  # GET /driverroutes/1.json
  def show
  end

  # GET /driverroutes/new
  def new
    @driverroute = Driverroute.new
  end

  # GET /driverroutes/1/edit
  def edit
  end

  # POST /driverroutes
  # POST /driverroutes.json
  def create
    @driverroute = Driverroute.new(driverroute_params)

    respond_to do |format|
      if @driverroute.save
        format.html { redirect_to @driverroute, notice: 'Driverroute was successfully created.' }
        format.json { render :show, status: :created, location: @driverroute }
      else
        format.html { render :new }
        format.json { render json: @driverroute.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /driverroutes/1
  # PATCH/PUT /driverroutes/1.json
  def update
    respond_to do |format|
      if @driverroute.update(driverroute_params)
        format.html { redirect_to @driverroute, notice: 'Driverroute was successfully updated.' }
        format.json { render :show, status: :ok, location: @driverroute }
      else
        format.html { render :edit }
        format.json { render json: @driverroute.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /driverroutes/1
  # DELETE /driverroutes/1.json
  def destroy
    @driverroute.destroy
    respond_to do |format|
      format.html { redirect_to driverroutes_url, notice: 'Driverroute was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_driverroute
      @driverroute = Driverroute.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def driverroute_params
      params.require(:driverroute).permit(:driver_id, :route_id)
    end
end
