class CrawledsController < ApplicationController
  before_action :set_crawled, only: [:show, :edit, :update, :destroy]

  # GET /crawleds
  # GET /crawleds.json
  def index
    @crawleds = Crawled.all
  end

  # GET /crawleds/1
  # GET /crawleds/1.json
  def show
  end

  # GET /crawleds/new
  def new
    @crawled = Crawled.new
  end

  # GET /crawleds/1/edit
  def edit
  end

  # POST /crawleds
  # POST /crawleds.json
  def create
    @crawled = Crawled.new(crawled_params)

    respond_to do |format|
      if @crawled.save
        format.html { redirect_to @crawled, notice: 'Crawled was successfully created.' }
        format.json { render :show, status: :created, location: @crawled }
      else
        format.html { render :new }
        format.json { render json: @crawled.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crawleds/1
  # PATCH/PUT /crawleds/1.json
  def update
    respond_to do |format|
      if @crawled.update(crawled_params)
        format.html { redirect_to @crawled, notice: 'Crawled was successfully updated.' }
        format.json { render :show, status: :ok, location: @crawled }
      else
        format.html { render :edit }
        format.json { render json: @crawled.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crawleds/1
  # DELETE /crawleds/1.json
  def destroy
    @crawled.destroy
    respond_to do |format|
      format.html { redirect_to crawleds_url, notice: 'Crawled was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crawled
      @crawled = Crawled.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def crawled_params
      params.require(:crawled).permit(:email, :phone)
    end
end
