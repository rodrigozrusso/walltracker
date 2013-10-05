class ServiceClassesController < ApplicationController
  before_action :set_service_class, only: [:show, :edit, :update, :destroy]

  # GET /service_classes
  # GET /service_classes.json
  def index
    @service_classes = ServiceClass.all
  end

  # GET /service_classes/1
  # GET /service_classes/1.json
  def show
  end

  # GET /service_classes/new
  def new
    @service_class = ServiceClass.new
  end

  # GET /service_classes/1/edit
  def edit
  end

  # POST /service_classes
  # POST /service_classes.json
  def create
    @service_class = ServiceClass.new(service_class_params)

    respond_to do |format|
      if @service_class.save
        format.html { redirect_to @service_class, notice: 'Service class was successfully created.' }
        format.json { render action: 'show', status: :created, location: @service_class }
      else
        format.html { render action: 'new' }
        format.json { render json: @service_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_classes/1
  # PATCH/PUT /service_classes/1.json
  def update
    respond_to do |format|
      if @service_class.update(service_class_params)
        format.html { redirect_to @service_class, notice: 'Service class was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @service_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_classes/1
  # DELETE /service_classes/1.json
  def destroy
    @service_class.destroy
    respond_to do |format|
      format.html { redirect_to service_classes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_class
      @service_class = ServiceClass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_class_params
      params.require(:service_class).permit(:name, :description, :image, :limit)
    end
end
