require 'spec_helper'
 
describe 'Tesseract Engine' do

  before :each do
    @engine = Engine.new
    @image = File.open("./samples/numbers.png", "r")
  end

  it "returns OCR data from an image" do
    results = @engine.extract_text(@image)
    expect(results).to include("1108080")
    expect(results).to include("\n")
    expect(results).to include("1404166")
  end

end
