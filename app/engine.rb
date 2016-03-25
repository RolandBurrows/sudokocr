require 'tesseract'

class Engine

	def initialize
		@tesseract_engine = Tesseract::Engine.new do |config|
		  config.language  = :eng
		  config.blacklist = '|'
		end
	end

  def extract_text(image)
    return @tesseract_engine.text_for(image)
  end

end
