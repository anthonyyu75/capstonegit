class CountryDemographicsController < ApplicationController
  before_action :set_country_demographic, only: %i[ show edit update destroy ]

  # GET /country_demographics or /country_demographics.json
  def index
    @country_demographics = CountryDemographic.all
  end

  # GET /country_demographics/1 or /country_demographics/1.json
  def show
  end

  # GET /country_demographics/new
  def new
    @country_demographic = CountryDemographic.new
  end

  # GET /country_demographics/1/edit
  def edit
  end

  # POST /country_demographics or /country_demographics.json
  def create
    @country_demographic = CountryDemographic.new(country_demographic_params)

    respond_to do |format|
      if @country_demographic.save
        format.html { redirect_to country_demographic_url(@country_demographic), notice: "Country demographic was successfully created." }
        format.json { render :show, status: :created, location: @country_demographic }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @country_demographic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /country_demographics/1 or /country_demographics/1.json
  def update
    respond_to do |format|
      if @country_demographic.update(country_demographic_params)
        format.html { redirect_to country_demographic_url(@country_demographic), notice: "Country demographic was successfully updated." }
        format.json { render :show, status: :ok, location: @country_demographic }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @country_demographic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /country_demographics/1 or /country_demographics/1.json
  def destroy
    @country_demographic.destroy!

    respond_to do |format|
      format.html { redirect_to country_demographics_url, notice: "Country demographic was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_country_demographic
      @country_demographic = CountryDemographic.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def country_demographic_params
      params.require(:country_demographic).permit(:name, :mobilephones, :mortalityunder5, :healthexpenditurepercapita, :healthexpenditureppercentgdp, :population, :populationurban, :birthrate, :lifeexpectancy, :gdp)
    end
end
