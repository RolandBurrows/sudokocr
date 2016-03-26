# Sudokocr
# Ruby optical character recognition Sudoku puzzle hyper-extractor

Dir["#{File.dirname(__FILE__)}/app/**/*.rb"].each { |f| require(f) }

# Gather input
input_image = ARGV[0] 

# Spin up the tesseract OCR
engine = Engine.new(filter=true)

# Display results
puts engine.extract_text(input_image)
