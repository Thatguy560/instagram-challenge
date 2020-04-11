class PicturesController < ApplicationController
  def index

  end

  def new
    # @picture = Picture.new
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
    params.require(:picture).permit(:text)
  end
end
