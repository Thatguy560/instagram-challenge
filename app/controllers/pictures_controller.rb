class PicturesController < ApplicationController
  def index

  end

  def new
    # @picture = Picture.new
  end

  def create
    # @picture = Picture.create(picture_params)
    # redirect_to pictures_url 
    render plain: params[:article].inspect
  end

  # def picture_params
  #   params.require(:picture).permit(:message)
  # end
end
