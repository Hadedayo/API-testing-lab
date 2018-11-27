require 'httparty'
require "json"

class Postcodes
  include HTTParty

  base_uri 'https://api.postcodes.io'

  attr_accessor :postcode

  def random_postcode
    @postcode = JSON.parse(self.class.get("/random/postcodes").body)
  end

  def get_status_from_postcode
    @single['status']
  end
end
