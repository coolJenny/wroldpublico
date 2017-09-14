class PediatricsController < ApplicationController
  before_action :set_pediatric, only: [:show, :edit, :update, :destroy]

  # GET /pediatrics
  # GET /pediatrics.json
  def index
    @pediatrics = Pediatric.all
  end

  # GET /pediatrics/1
  # GET /pediatrics/1.json
  def show
  end

  # GET /pediatrics/new
  def new
    @pediatric = Pediatric.new
  end

  # GET /pediatrics/1/edit
  def edit
  end

  # POST /pediatrics
  # POST /pediatrics.json
  def create
    @pediatric = Pediatric.new(pediatric_params)

    respond_to do |format|
      if @pediatric.save
        format.html { redirect_to @pediatric, notice: 'Pediatric was successfully created.' }
        format.json { render :show, status: :created, location: @pediatric }
      else
        format.html { render :new }
        format.json { render json: @pediatric.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pediatrics/1
  # PATCH/PUT /pediatrics/1.json
  def update
    respond_to do |format|
      if @pediatric.update(pediatric_params)
        format.html { redirect_to @pediatric, notice: 'Pediatric was successfully updated.' }
        format.json { render :show, status: :ok, location: @pediatric }
      else
        format.html { render :edit }
        format.json { render json: @pediatric.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pediatrics/1
  # DELETE /pediatrics/1.json
  def destroy
    @pediatric.destroy
    respond_to do |format|
      format.html { redirect_to pediatrics_url, notice: 'Pediatric was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pediatric
      @pediatric = Pediatric.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pediatric_params
      params.require(:pediatric).permit(:uid, :content)
    end
end
