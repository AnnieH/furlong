require 'rspec'
require './furlong'

describe Furlong do

	let(:calculator) { Furlong.new }
	
	it "converts 1 mile to 1.60934 km" do
		subject.miles_to_kilometers(1).should be_within(0.0001).of(1.60934)
	end

	it "converts a marathon: 26.219 miles to 42.194988 km" do
		subject.miles_to_kilometers(26.219).should be_within(0.001).of(42.194988)
	end

	it "converts 1 furlong to 0.201168 km" do
  	calculator.furlongs_to_km(1).should be_within(0.0001).of(0.201168)
  end

  it "converts 15 furlong to 3.01752 km" do
    calculator.furlongs_to_km(15).should be_within(0.001).of(3.01752)
  end
end