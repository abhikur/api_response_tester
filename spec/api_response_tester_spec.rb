require 'rest-client'
require 'yaml'
require 'json'

RSpec.describe "#test_api" do
  context "" do
    test_file = YAML.load_file(ENV['api_test_file'])
    test_file.each do |test|
      it "Testing '#{test['api']}' with params '#{test['params']}'" do
        response = RestClient.send(test['method'], test["api"], test["params"])
        expected_response = JSON.parse(File.read(ENV['response_dir'] + '/' + test["expected_response_file"]))
        expect(response.code).to eq(test['status'])
        expect(JSON.parse(response.body)).to eq(expected_response)
      end
    end
  end
end