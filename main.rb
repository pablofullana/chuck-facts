require 'sinatra'
require 'httparty'
require 'json'
require 'slim'

# root
get '/' do
  # get fact
  response = HTTParty.get 'http://api.icndb.com/jokes/random'

  # parse fact
  json_response = JSON.parse(response.body)
  if json_response['type'] == 'success'
    @fact  = json_response['value']['joke']
  else
    @fact = 'Sorry dude, no fact'
  end

  # render fact
  slim :chuck_fact
end
