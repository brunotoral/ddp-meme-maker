class MemeController < ApplicationController
  def show
    @meme ||= Meme.find params[:id]
  end

  def create
    @meme = Meme.new meme_params
    if @meme.save
      flash[:success] = "A puppy was saved"
    else
      #some error msg and action
    end
  end

  def edit
    @meme = Meme.new
  end

  def update
    @meme ||= Meme.find params[:id]
    @meme.update_attributes meme_params
  end

  private

  def meme_params
    params.require(:meme).permit(:image, :top_text, :bottom_text)
  end
end
