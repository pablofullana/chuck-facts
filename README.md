# Sinatra and Bluemix sample app

This application is just a simple Sinatra app ready to be deployed to Bluemix.
Besides, it displays the users a funny, yet truthy, fact about the old Chuck.

## Running it locally

1. Make sure you have Ruby (2.2.3) installed. [How to install Ruby][]
2. Clone this repository
3. Run `gem install bundler` to install bundler gem
4. Run `bundler install` to install dependencies
5. Run `bundle exec rackup -p 4567` to start the application
6. Give the application a try at http://localhost:4567

[How to install Ruby]: https://www.ruby-lang.org/en/documentation/installation/

## Deploying it to Bluemix

1. Copy `manifest.yml.sample` to `manifest.sample` and edit with your app values.
2. Connect to Bluemix: `cf api https://api.ng.bluemix.net`
3. Log in to Bluemix: `cf login`
4. Push the app to Bluemix: `cf push <your_application>`
