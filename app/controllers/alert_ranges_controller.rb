class AlertRangesController < ApplicationController
  before_action :set_alert_range, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /alert_ranges
  # GET /alert_ranges.json
  def index
    @alert_ranges = AlertRange.all
  end

  # GET /alert_ranges/1
  # GET /alert_ranges/1.json
  def show
  end

  # GET /alert_ranges/new
  def new
    @alert_range = AlertRange.new
  end

  # GET /alert_ranges/1/edit
  def edit
  end

  # POST /alert_ranges
  # POST /alert_ranges.json
  def create
    @alert_range = AlertRange.new(alert_range_params)

    respond_to do |format|
      if @alert_range.save
        format.html { redirect_to @alert_range, notice: 'Alert range was successfully created.' }
        format.json { render :show, status: :created, location: @alert_range }
      else
        format.html { render :new }
        format.json { render json: @alert_range.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alert_ranges/1
  # PATCH/PUT /alert_ranges/1.json
  def update
    respond_to do |format|
      if @alert_range.update(alert_range_params)
        format.html { redirect_to @alert_range, notice: 'Alert range was successfully updated.' }
        format.json { render :show, status: :ok, location: @alert_range }
      else
        format.html { render :edit }
        format.json { render json: @alert_range.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alert_ranges/1
  # DELETE /alert_ranges/1.json
  def destroy
    @alert_range.destroy
    respond_to do |format|
      format.html { redirect_to alert_ranges_url, notice: 'Alert range was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alert_range
      @alert_range = AlertRange.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alert_range_params
      params.require(:alert_range).permit(:start_time, :end_time, :status, :interval)
    end
end
