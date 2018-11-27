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
      expect(@postcodesio.single_four_uk_countries).to eq("England").or eq("Wales").or eq("Scotland").or eq("Northern Ireland")
    end

    it "should return a string value for NHS authority " do
      expect(@postcodesio.single_nhs_authority).to be_kind_of String
    end

    it "should return a longitude float value" do
      expect(@postcodesio.single_longitude_value).to be_kind_of Float
    end

    it "should return a latitude float value" do
      expect(@postcodesio.single_latitude_value).to be_kind_of Float
    end

    it "should return a parliamentary constituency string" do
      expect(@postcodesio.single_parliamentary_constituency).to be_kind_of String
    end

    it "should return a european_electoral_region string" do
      expect(@postcodesio.single_european_electoral_region).to be_kind_of String
    end

    it "should return a primary_care_trust string" do
      expect(@postcodesio.single_primary_care_trust).to be_kind_of String
    end

    it "should return a region string" do
      expect(@postcodesio.single_region).to be_kind_of String
    end

    it "should return a parish string" do
      expect(@postcodesio.single_parish).to be_kind_of String
    end

    it "should return a lsoa string" do
      expect(@postcodesio.single_lsoa).to be_kind_of String
    end

    it "should return a msoa string" do
      expect(@postcodesio.single_msoa).to be_kind_of String
    end





  end
end
