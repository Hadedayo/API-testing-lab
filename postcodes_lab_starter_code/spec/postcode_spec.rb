require 'spec_helper'

describe Postcodesio do

  context 'requesting information on a single postcode works correctly' do

    before(:all) do
      @postcodesio = Postcodesio.new
      @response = @postcodesio.get_single_postcode

    end

    it "should respond with a status message of 200" do
      expect(@postcodesio.get_status_from_postcode).to eq 200
    end

    it "should have a results hash" do
      expect(@response).to be_kind_of Hash
    end

    it "should return a postcode between 5-7 in length"  do
      expect(@postcodesio.single_length_of_postcode.length).to be_between(5,7).inclusive
    end

    it "should return a quality key integer between 1-9" do
      expect(@postcodesio.single_postcode_quality.to_i).to be_kind_of Numeric
      expect(@postcodesio.single_postcode_quality.to_i).to be_between(1,9).inclusive
    end

    it "should return an ordnance survey eastings value as integer" do
      expect(@postcodesio.single_postcode_eastings).to be_kind_of Integer
    end

    it "should return an ordnance survey northings value as integer" do
      expect(@postcodesio.single_postcode_northings).to be_kind_of Integer
    end

    it "should return a country which is one of the four constituent countries of the UK" do
      expect(@postcodesio.four_uk_countries).to eq 'England'||'Scotland'||'Wales'||'Northern Ireland'
    end


  end
end
