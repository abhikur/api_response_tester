Gem::Specification.new do |s|
  s.name        = 'api_response_tester'
  s.version     = '0.0.0'
  s.date        = '2018-09-28'
  s.summary     = "A gem which tests the api endpoints"
  s.description = "ApiResponseTester tests the api endpoints by taking a yaml file which consists of api endpoints, params, and expected response json file reference."
  s.authors     = ["Abhishek Thakur"]
  s.email       = 'thakura204@gmail.com'
  s.files       = ["lib/api_response_tester.rb", "spec/api_response_tester_spec.rb", "spec/spec_helper.rb"]
  s.homepage    =
      'http://rubygems.org/gems/api_response_tester'
  s.license       = 'MIT'
end