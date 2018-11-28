require 'httparty'
require 'json'
require_relative './lib/generate_data.rb'

class Postcodesio
  include HTTParty

  base_uri 'https://api.postcodes.io'

  attr_accessor :single, :random

  def initialize
    @random = Postcodes.new
    @single = @random.random_postcode
  end

  def get_single_postcode
    @single
  end

  def get_status_from_postcode
    @single['status']
  end

  def single_length_of_postcode
   m =  @single['result']['postcode']
   m.gsub(' ','')
  end

  def single_postcode_quality
    @single['result']['quality']
  end

  def single_postcode_eastings
    @single['result']['eastings']
  end

  def single_postcode_northings
    @single['result']['northings']
  end

  def single_four_uk_countries
    @single['result']['country']
  end

  def single_nhs_authority
    @single['result']['nhs_ha']
  end

  def single_longitude_value
    @single['result']['longitude']
  end

  def single_latitude_value
    @single['result']['latitude']
  end

  def single_parliamentary_constituency
    @single['result']['parliamentary_constituency']
  end

  def single_european_electoral_region
    @single['result']['european_electoral_region']
  end

  def single_primary_care_trust
    @single['result']['primary_care_trust']
  end

  def single_region
    @single['result']['region']
  end

  def single_parish
    @single['result']['parish']
  end

  def single_lsoa
    @single['result']['lsoa']
  end

  def single_msoa
    @single['result']['msoa']
  end

  def single_admin_district
    @single['result']['admin_district']
  end

  def single_incode
    @single['result']['incode']
  end

  def single_admin_ward
    @single['result']['codes']['admin_ward']
  end

  def single_admin_county
    @single['result']['codes']['admin_county']
  end

end
