class HerokublogsController < ApplicationController
  before_action :set_herokublog, only: [:show, :edit, :update, :destroy]

  # GET /herokublogs
  # GET /herokublogs.json
  def index
    @herokublogs = Herokublog.all
  end

  # GET /herokublogs/1
  # GET /herokublogs/1.json
  def show
  end

  # GET /herokublogs/new
  def new
    @herokublog = Herokublog.new
  end

  # GET /herokublogs/1/edit
  def edit
  end

  # POST /herokublogs
  # POST /herokublogs.json
  def create
    @herokublog = Herokublog.new(herokublog_params)

    respond_to do |format|
      if @herokublog.save
        format.html { redirect_to @herokublog, notice: 'Herokublog was successfully created.' }
        format.json { render :show, status: :created, location: @herokublog }
      else
        format.html { render :new }
        format.json { render json: @herokublog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /herokublogs/1
  # PATCH/PUT /herokublogs/1.json
  def update
    respond_to do |format|
      if @herokublog.update(herokublog_params)
        format.html { redirect_to @herokublog, notice: 'Herokublog was successfully updated.' }
        format.json { render :show, status: :ok, location: @herokublog }
      else
        format.html { render :edit }
        format.json { render json: @herokublog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /herokublogs/1
  # DELETE /herokublogs/1.json
  def destroy
    @herokublog.destroy
    respond_to do |format|
      format.html { redirect_to herokublogs_url, notice: 'Herokublog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_herokublog
      @herokublog = Herokublog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def herokublog_params
      params.require(:herokublog).permit(:title, :context)
    end
end
