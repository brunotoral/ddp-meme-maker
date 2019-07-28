class HomeController < ApplicationController
  def root
    @meme = Meme.new
    @last_meme = Meme.last
  end
end
