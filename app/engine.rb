require 'tesseract'

class Engine

	def initialize(filter=nil)
    @filter = filter
		@tesseract_engine = Tesseract::Engine.new do |config|
		  config.language  = :eng
		  config.blacklist = '|'
		end
	end

  def extract_text(image)
    if @filter
      return filter(@tesseract_engine.text_for(image))
    else
      return @tesseract_engine.text_for(image)
    end
  end


  private

  def filter(text)
    text.split(/\n/).compact.select { |v| v.size > 0 }
  end

end
