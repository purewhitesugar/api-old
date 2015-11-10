class LogosController < ApplicationController
  before_action :set_logo, only: [:show, :update, :destroy]

  # GET /logos
  def index
    @logos = Logo.all
 
    #render json: @logos
    render status: 503
  end

  # GET /logos/1
  def show
    render json: @logo
  end

  # POST /logos
  def create
    @logo = Logo.new(logo_params)

    if @logo.save
      render json: @logo, status: :created, location: @logo
    else
      render json: @logo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /logos/1
  def update
    if @logo.update(logo_params)
      render json: @logo
    else
      render json: @logo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /logos/1
  def destroy
    @logo.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_logo
      @logo = Logo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def logo_params
      params.require(:logo).permit(:uri, :description)
    end
end
