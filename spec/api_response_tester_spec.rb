require 'rest-client'
require 'yaml'
require 'json'

RSpec.describe "#test_api" do
  context "" do
    test_file = YAML.load_file(ENV['api_test_file'])
    test_file.each do |test|
      it "Testing '#{test['api']}' with params '#{test['params']}'" do
          if test["method"].eql? "post"
            response = RestClient.post test["api"], test["params"]
          elsif test["method"].eql? "put"
            response = RestClient.put test["api"], test["params"]
          elsif test["method"].eql? "delete"
            response = RestClient.delete test["api"], test["params"]
          else
            response = RestClient.get test["api"], test["params"]
          end
          expected_response = JSON.parse(File.read(test["expected_response_file"]))
          expect(response.code).to eq(200)
          expect(JSON.parse(response.body)).to eq(expected_response)
      end
    end
  end
end