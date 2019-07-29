class MemesController < ApplicationController
  def show
    @meme = Meme.find params[:id]
  end

  def create
    @meme = Meme.new meme_params
    if @meme.save
      flash[:success] = "A puppy was saved"
      redirect_to @meme
    else
      flash[:alert] = "A puppy died!!!"
      render :show
    end
  end

  def update
    @meme ||= Meme.find params[:id]
    if @meme.update_attributes meme_params
      flash[:success] = "Your meme has updated"
      redirect_to @meme
    else
      flash[:alert] = "You will die"
      render :show
    end
  end

  private

  def meme_params
    params.require(:meme).permit(:image, :top_text, :bottom_text, :color)
  end
end
