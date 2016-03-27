# Sudokocr
# Ruby optical character recognition Sudoku puzzle hyper-extractor

Dir["#{File.dirname(__FILE__)}/app/**/*.rb"].each { |f| require(f) }

# Gather input
input_image = ARGV[0] 

class Sudokocr
  # Spin up the tesseract OCR
  def initialize
    @engine = Engine.new(filter=true)
  end

  def extract_text(image)
    extraction = @engine.extract_text(image)
    puts extraction
    return extraction
  end
end

# Display results
sudo = Sudokocr.new
sudo.extract_text(input_image)
