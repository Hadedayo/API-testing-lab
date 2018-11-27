require 'httparty'
require 'json'
require_relative './lib/generate_data.rb'

class Postcodesio
  include HTTParty

  base_uri 'https://api.postcodes.io'

  attr_accessor :single, :multiple

  def initialize
    @randomP = Postcodes.new
    @single = @randomP.random_postcode
    @multiple
  end

  def get_single_postcode
    @single
  end

  def get_multiple_postcodes(postcodes_array)
    @multiple = JSON.parse(self.class.post('/postcodes', body: { "postcodes" => postcodes_array}).body)
  end

  def get_status_from_postcode
    @single['status']
  end

  def single_length_of_postcode
   m =  @single['result']['postcode']
   m.gsub(' ','')
  end

end

test = Postcodesio.new
# puts test.single
puts test.single_length_of_postcode
