# Sudokocr
# Ruby optical character recognition Sudoku puzzle hyper-extractor

# Dir["#{File.dirname(__FILE__)}/app/**/*.rb"].each { |f| require(f) }

# encoding: utf-8
require 'tesseract'

engine = Tesseract::Engine.new do |config|
  config.language  = :eng
  config.blacklist = '|'
end

def clean(text)
  text.split(/\n/).compact.select { |v| v.size > 0 }
end

puts clean(engine.text_for(ARGV.first))
