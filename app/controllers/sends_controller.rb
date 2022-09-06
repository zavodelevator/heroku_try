class SendsController < ApplicationController
  before_action :set_send, only: %i[ show edit update destroy ]

  # GET /sends or /sends.json
  def index
    @sends = Send.all
  end

  # GET /sends/1 or /sends/1.json
  def show
  end

  # GET /sends/new
  def new
    @send = Send.new
  end

  # GET /sends/1/edit
  def edit
  end

  # POST /sends or /sends.json
  def create
    @send = Send.new(send_params)

    respond_to do |format|
      if @send.save
        format.html { redirect_to send_url(@send), notice: "Send was successfully created." }
        format.json { render :show, status: :created, location: @send }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @send.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sends/1 or /sends/1.json
  def update
    respond_to do |format|
      if @send.update(send_params)
        format.html { redirect_to send_url(@send), notice: "Send was successfully updated." }
        format.json { render :show, status: :ok, location: @send }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @send.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sends/1 or /sends/1.json
  def destroy
    @send.destroy

    respond_to do |format|
      format.html { redirect_to sends_url, notice: "Send was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_send
      @send = Send.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def send_params
      params.require(:send).permit(:sends, :sends2)
    end
end
