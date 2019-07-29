class Meme < ApplicationRecord
  has_one_attached :image


  validate :image_presence
  validate :color
  enum color: {white: "#FFFFFF", red: "#FF0000", yellow: "#FFFF00", green: "#006400", blue: "#0000CD"}
  validates  :top_text, :bottom_text, presence: true, length: { maximum: 20 }

  def process_image
    image.variant(
      resize: '304x221',
      combine_options: {
        draw: "text 0,-100 '#{top_text}' text 0,100 '#{bottom_text}'",
        fill: color,
        pointsize: '20',
        gravity: 'center',
        weight: 'heavy',
        stroke: 'black',
        strokewidth: '1'
      }
    )
  end

  def image_presence
    errors.add(:image, "invalid") unless image.attached?
  end
end
