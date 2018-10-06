# Api Response Tester

A simple to use testing tool to test the apis. Api response tester can be used to test the json responses of your api. It is yaml based i.e, you are required to put all the test scenarios in a yaml file and from there api response tester will run each of your test scenarios and prints the logs on your terminal. To know how it works please see the Usage section below.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'api_response_tester'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install api_response_tester

## Usage

Api response tester need two things:

1. Test file (yml file consists of your test cases)
2. All of your expected response files under a single folder

 ```yml
 #test_file.yml
 
 - api: http://localhost:3000/users.json
   params:
   method: get
   status: 200
   expected_response_file: users_response.json
 ```
 this is a test for a `get` request. In the above example `params` is not set as this is an example of get request. In case of post request you can pass the params using `params` field.

```json
#all_responses/users_response.json

 [
    {
      "name": "test_user",
      "role": "admin"
    },
    {
      "name": "another_user",
      "role": "buyer"
    }
 ]
 ```
 
 the above json file should be inside a folder which you will mention which calling the test function of api_response_tester.
 

## Development

####Calling the test method of api_response_tester
 When the test file and the response folder has been created finally you can call the test method as given below:
 
 ```ruby
#test_api.rb
 
require 'api_response_tester'

ApiResponseTester.test_api('path/to/test_file.yml', 'path/to/responses_directory')
  

```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/abhikur/api_response_tester. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the api_response_tester project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/foodie/blob/master/CODE_OF_CONDUCT.md).
