class GardensController < ApplicationController
  before_action :set_garden, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: %i[show index] #allows you to show gardens without being signed in, sign in to edit

  # GET /gardens or /gardens.json
  def index
    @gardens = Garden.all.order(created_at: :desc)
  end

  # GET /gardens/1 or /gardens/1.json
  def show
    # bit of logic to add once I add views
    # @garden.update(views: @post.views +1)
    # same as 
    # views = @post.views +1
    # @post.views = views
    # @post.save
  end

  # GET /gardens/new
  def new
    @garden = Garden.new
  end

  # GET /gardens/1/edit
  def edit
  end

  # POST /gardens or /gardens.json
  def create
    @garden = Garden.new(garden_params)
    @garden.user = current_user

    respond_to do |format|
      if @garden.save
        format.html { redirect_to garden_url(@garden), notice: "Garden was successfully created." }
        format.json { render :show, status: :created, location: @garden }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @garden.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gardens/1 or /gardens/1.json
  def update
    respond_to do |format|
      if @garden.update(garden_params)
        format.html { redirect_to garden_url(@garden), notice: "Garden was successfully updated." }
        format.json { render :show, status: :ok, location: @garden }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @garden.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gardens/1 or /gardens/1.json
  def destroy
    @garden.destroy

    respond_to do |format|
      format.html { redirect_to gardens_url, notice: "Garden was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_garden
      @garden = Garden.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def garden_params
      params.require(:garden).permit(:garden_name, :start_date, :greenhouse, :public)
    end
end
