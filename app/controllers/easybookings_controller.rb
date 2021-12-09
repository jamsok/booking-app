class EasybookingsController < ApplicationController
  before_action :set_easybooking, only: %i[ show edit update destroy ]

  # GET /easybookings or /easybookings.json
  def index
    @easybookings = Easybooking.all
  end

  # GET /easybookings/1 or /easybookings/1.json
  def show
  end

  # GET /easybookings/new
  def new
    @easybooking = Easybooking.new
  end

  # GET /easybookings/1/edit
  def edit
  end

  # POST /easybookings or /easybookings.json
  def create
    @easybooking = Easybooking.new(easybooking_params)

    respond_to do |format|
      if @easybooking.save
        format.html { redirect_to @easybooking, notice: "Easybooking was successfully created." }
        format.json { render :show, status: :created, location: @easybooking }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @easybooking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /easybookings/1 or /easybookings/1.json
  def update
    respond_to do |format|
      if @easybooking.update(easybooking_params)
        format.html { redirect_to @easybooking, notice: "Easybooking was successfully updated." }
        format.json { render :show, status: :ok, location: @easybooking }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @easybooking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /easybookings/1 or /easybookings/1.json
  def destroy
    @easybooking.destroy
    respond_to do |format|
      format.html { redirect_to easybookings_url, notice: "Easybooking was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_easybooking
      @easybooking = Easybooking.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def easybooking_params
      params.require(:easybooking).permit(:phone_number, :date_of_booking)
    end
end
