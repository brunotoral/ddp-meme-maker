class Meme < ApplicationRecord
  has_one_attached :image

  validates :image, :top_text, :bottom_text, presence: true

  def process_image
    image.variant(
      resize: '304x221',
      combine_options: {
        draw: "text 0,-100 '#{top_text}' text 0,100 '#{bottom_text}'",
        fill: '#FFFF00',
        pointsize: '22',
        gravity: 'center',
        font: 'helvetic',
        weight: 'heavy',
        stroke: 'black',
        strokewidth: '1'
      }
    )
  end
end
