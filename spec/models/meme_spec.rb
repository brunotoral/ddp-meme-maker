require 'rails_helper'

describe Meme do
  describe 'validations' do
    it 'is invalid when top_text is blank' do
      meme = Meme.new(top_text: '')

      meme.validate

      expect(meme.errors.messages[:top_text]).to include "can't be blank"
    end

    it 'is invalid when top_text is blank' do
      meme = Meme.new(bottom_text: '')

      meme.validate

      expect(meme.errors.messages[:bottom_text]).to include "can't be blank"
    end

    it 'is invalid when image is blank' do
      meme = Meme.new(image: nil)

      meme.validate

      expect(meme.errors.messages[:image]).to include "invalid"
    end
  end
end
