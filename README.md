# API-testing-lab

This program tests the information on a single postcode API works correctly. Properties of the API tested include: String, Float, Numeric etc.

## Accessing an API
A class in generate_data.rb file was created to access the Postcode API and this gets random postcodes from the API using (HTTParty) which is then tested.

## Installing the Repository
To access this repository, clone using HTTPS by copying the HTTPS link and running 'git clone <i>insert https link here'

##  Running RSpec
RSpec is a test driven development tool written in Ruby to test Ruby code.
Install RSpec and run rspec --init to set up your project to use RSpec. Run rspec command from your project directory. RSpec will look inside the spec subdirectory for files named array_spec.rb and hash_spec.rb and run them. RSpec gives a detailed report displaying which spec failed, the line of code where the error occured, and a description of the failure.

RSpec relies on the repetition of a very short development cycle, it includes;

1. Red - Write an initially failing automated test case
2. Green - Make the test work
3. Refactor - Eliminate all of the duplication created in merely getting the test to work
