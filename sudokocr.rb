# Sudokocr
# Ruby optical character recognition Sudoku puzzle hyper-extractor

Dir["#{File.dirname(__FILE__)}/app/**/*.rb"].each { |f| require(f) }

engine = Engine.new

def clean(text)
  text.split(/\n/).compact.select { |v| v.size > 0 }
end

puts clean(engine.extract_text(ARGV.first))
