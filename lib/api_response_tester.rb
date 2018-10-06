require 'rspec'
class ApiResponseTester
  def self.test_api test_file_path, response_dir
    ENV['api_test_file'] = test_file_path
    ENV['response_dir'] = response_dir
    RSpec::Core::Runner::run([__dir__ + '/../spec/api_response_tester_spec.rb'])
  end
end