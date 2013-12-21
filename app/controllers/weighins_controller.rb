class WeighinsController < ApplicationController
  before_action :set_weighin, only: [:show, :edit, :update, :destroy]

  # GET /weighins
  # GET /weighins.json
  def index
    @weighins = Weighin.all
  end

  # GET /weighins/1
  # GET /weighins/1.json
  def show
  end

  # GET /weighins/new
  def new
    @weighin = Weighin.new
  end

  # GET /weighins/1/edit
  def edit
  end

  # POST /weighins
  # POST /weighins.json
  def create
    @weighin = Weighin.new(weighin_params)

    respond_to do |format|
      if @weighin.save
        format.html { redirect_to @weighin, notice: 'Weighin was successfully created.' }
        format.json { render action: 'show', status: :created, location: @weighin }
      else
        format.html { render action: 'new' }
        format.json { render json: @weighin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /weighins/1
  # PATCH/PUT /weighins/1.json
  def update
    respond_to do |format|
      if @weighin.update(weighin_params)
        format.html { redirect_to @weighin, notice: 'Weighin was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @weighin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weighins/1
  # DELETE /weighins/1.json
  def destroy
    @weighin.destroy
    respond_to do |format|
      format.html { redirect_to weighins_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weighin
      @weighin = Weighin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def weighin_params
      params[:weighin]
    end
end
