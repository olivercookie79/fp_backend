class ShowreelsController < ApplicationController
  before_action :set_showreel, only: [:show, :edit, :update, :destroy]

  # GET /showreels
  # GET /showreels.json
  def index
    @showreels = Showreel.all
  end

  # GET /showreels/1
  # GET /showreels/1.json
  def show
  end

  # GET /showreels/new
  def new
    @showreel = Showreel.new
  end

  # GET /showreels/1/edit
  def edit
  end

  # POST /showreels
  # POST /showreels.json
  def create
    @showreel = Showreel.new(showreel_params)

    respond_to do |format|
      if @showreel.save
        format.html { redirect_to @showreel, notice: 'Showreel was successfully created.' }
        format.json { render :show, status: :created, location: @showreel }
      else
        format.html { render :new }
        format.json { render json: @showreel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /showreels/1
  # PATCH/PUT /showreels/1.json
  def update
    respond_to do |format|
      if @showreel.update(showreel_params)
        format.html { redirect_to @showreel, notice: 'Showreel was successfully updated.' }
        format.json { render :show, status: :ok, location: @showreel }
      else
        format.html { render :edit }
        format.json { render json: @showreel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /showreels/1
  # DELETE /showreels/1.json
  def destroy
    @showreel.destroy
    respond_to do |format|
      format.html { redirect_to showreels_url, notice: 'Showreel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_showreel
      @showreel = Showreel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def showreel_params
      params.require(:showreel).permit(:title, :notes)
    end
end
