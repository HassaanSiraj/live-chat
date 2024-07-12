class LivechatsController < ApplicationController
  before_action :set_livechat, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /livechats or /livechats.json
  def index
    @livechats = Livechat.all
  end

  # GET /livechats/1 or /livechats/1.json
  def show
  end

  # GET /livechats/new
  def new
    @livechat = Livechat.new
  end

  # GET /livechats/1/edit
  def edit
  end

  # POST /livechats or /livechats.json
  def create
    @livechat = Livechat.new(livechat_params)

    respond_to do |format|
      if @livechat.save
        format.html { redirect_to livechat_url(@livechat), notice: "Livechat was successfully created." }
        format.json { render :show, status: :created, location: @livechat }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @livechat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /livechats/1 or /livechats/1.json
  def update
    respond_to do |format|
      if @livechat.update(livechat_params)
        format.html { redirect_to livechat_url(@livechat), notice: "Livechat was successfully updated." }
        format.json { render :show, status: :ok, location: @livechat }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @livechat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /livechats/1 or /livechats/1.json
  def destroy
    @livechat.destroy

    respond_to do |format|
      format.html { redirect_to livechats_url, notice: "Livechat was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_livechat
      @livechat = Livechat.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def livechat_params
      params.require(:livechat).permit(:inbox)
    end
end
