class PaperclipImagesController < ApplicationController
  before_action :set_paperclip_image, only: [:show, :edit, :update, :destroy]

  # GET /paperclip_images
  # GET /paperclip_images.json
  def index
    @paperclip_images = PaperclipImage.all
  end

  # GET /paperclip_images/1
  # GET /paperclip_images/1.json
  def show
  end

  # GET /paperclip_images/new
  def new
    @paperclip_image = PaperclipImage.new
  end

  # GET /paperclip_images/1/edit
  def edit
  end

  # POST /paperclip_images
  # POST /paperclip_images.json
  def create
    @paperclip_image = PaperclipImage.new(paperclip_image_params)

    respond_to do |format|
      if @paperclip_image.save
        format.html { redirect_to @paperclip_image, notice: 'Paperclip image was successfully created.' }
        format.json { render :show, status: :created, location: @paperclip_image }
      else
        format.html { render :new }
        format.json { render json: @paperclip_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paperclip_images/1
  # PATCH/PUT /paperclip_images/1.json
  def update
    respond_to do |format|
      if @paperclip_image.update(paperclip_image_params)
        format.html { redirect_to @paperclip_image, notice: 'Paperclip image was successfully updated.' }
        format.json { render :show, status: :ok, location: @paperclip_image }
      else
        format.html { render :edit }
        format.json { render json: @paperclip_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paperclip_images/1
  # DELETE /paperclip_images/1.json
  def destroy
    @paperclip_image.destroy
    respond_to do |format|
      format.html { redirect_to paperclip_images_url, notice: 'Paperclip image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paperclip_image
      @paperclip_image = PaperclipImage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def paperclip_image_params
      params.require(:paperclip_image).permit(:asset)
    end
end
