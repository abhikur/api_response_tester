require 'rspec'
class ApiResponseTester
  def self.test_api file_path
    ENV['api_test_file'] = file_path
    RSpec::Core::Runner::run([__dir__ + '/../spec/api_response_tester_spec.rb'])
  end
end