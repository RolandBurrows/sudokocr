require 'spec_helper'
 
describe 'Tesseract Engine' do

  before :each do
    @image = File.open("./sample_images/analog/numbers.png", "r")
  end

  it "returns raw OCR data from an image" do
    engine = Engine.new
    results = engine.extract_text(@image)
    expect(results).to be_a(String)
    expect(results).to include("1108080")
    expect(results).to include("\n")
    expect(results).to include("1404166")
  end

  it "returns filtered OCR data from an image" do
    engine = Engine.new(filter=true)
    results = engine.extract_text(@image)
    expect(results).to be_a(Array)
    expect(results).to include("1108080")
    expect(results).not_to include("\n")
    expect(results).to include("1404166")
  end

end
