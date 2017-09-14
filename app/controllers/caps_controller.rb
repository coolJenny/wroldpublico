class CapsController < ApplicationController
  before_action :set_cap, only: [:show, :edit, :update, :destroy]

  # GET /caps
  # GET /caps.json
  def index
    @caps = Cap.all
  end

  # GET /caps/1
  # GET /caps/1.json
  def show
  end

  # GET /caps/new
  def new
    @cap = Cap.new
  end

  # GET /caps/1/edit
  def edit
  end

  # POST /caps
  # POST /caps.json
  def create
    @cap = Cap.new(cap_params)

    respond_to do |format|
      if @cap.save
        format.html { redirect_to @cap, notice: 'Cap was successfully created.' }
        format.json { render :show, status: :created, location: @cap }
      else
        format.html { render :new }
        format.json { render json: @cap.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /caps/1
  # PATCH/PUT /caps/1.json
  def update
    respond_to do |format|
      if @cap.update(cap_params)
        format.html { redirect_to @cap, notice: 'Cap was successfully updated.' }
        format.json { render :show, status: :ok, location: @cap }
      else
        format.html { render :edit }
        format.json { render json: @cap.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /caps/1
  # DELETE /caps/1.json
  def destroy
    @cap.destroy
    respond_to do |format|
      format.html { redirect_to caps_url, notice: 'Cap was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cap
      @cap = Cap.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cap_params
      params.require(:cap).permit(:name)
    end
end
