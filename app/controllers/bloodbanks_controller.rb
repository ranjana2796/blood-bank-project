class BloodbanksController < ApplicationController
  before_action :authenticate_user!   
  before_action :set_bloodbank, only: %i[ show edit update destroy ]
  

  # GET /bloodbanks or /bloodbanks.json
  def index
    # @bloodbanks = Bloodbank.all
    @bloodbanks= Bloodbank.paginate(page: params[:page], per_page:4 )
  end

  # GET /bloodbanks/1 or /bloodbanks/1.json
  def show
    
  end

  # GET /bloodbanks/new
  def new
    @bloodbank = Bloodbank.new
  end

  # GET /bloodbanks/1/edit
  def edit
  end

  # POST /bloodbanks or /bloodbanks.json
  def create
    @bloodbank = Bloodbank.new(bloodbank_params)

    respond_to do |format|
      if @bloodbank.save
        format.html { redirect_to @bloodbank, notice: "Bloodbank was successfully created." }
        format.json { render :show, status: :created, location: @bloodbank }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bloodbank.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bloodbanks/1 or /bloodbanks/1.json
  def update
    respond_to do |format|
      if @bloodbank.update(bloodbank_params)
        format.html { redirect_to @bloodbank, notice: "Bloodbank was successfully updated." }
        format.json { render :show, status: :ok, location: @bloodbank }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bloodbank.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bloodbanks/1 or /bloodbanks/1.json
  def destroy
    @bloodbank.destroy
    respond_to do |format|
      format.html { redirect_to bloodbanks_url, notice: "Bloodbank was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bloodbank
      @bloodbank = Bloodbank.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bloodbank_params
      params.require(:bloodbank).permit(:name, :address, :category, :availability)
    end
end
