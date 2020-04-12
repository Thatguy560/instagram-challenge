class PicturesController < ApplicationController
  def index
    @pictures = Picture.order(created_at: :desc)
  end

  def show
    # Params id would be a random integer e.g. 1, 2, 3 etc.
    @picture = Picture.find(params[:id])
  end

  def new
   
  end

  def create
    # For security reasons we need a require and permit 
    @picture = Picture.new(picture_params)

    @picture.save
    redirect_to @picture
    # render plain: params[:article].inspect
  end

  private
  def picture_params
    params.require(:picture).permit(:caption, :image)
    # Try and add image into picture
  end
end
