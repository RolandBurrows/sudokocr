Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'sudokocr'
  s.summary     = 'Ruby optical character recognition Sudoku puzzle hyper-extractor'
  s.description = 'Extracts the Sudoku puzzle data from a given image file'

  s.required_ruby_version     = '>= 2.2.4'

  s.license = 'MPL'

  s.author   = 'Roland Burrows'
  s.email    = 'rolandnburrows@gmail.com'

  s.files = ['README.md']

  s.add_dependency 'bundler',         '>= 1.11.2'
end
