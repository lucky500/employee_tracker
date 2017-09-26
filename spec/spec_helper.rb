ENV['RACK_ENV'] = 'test'
require('rspec')
require('sinatra/activerecord')
require('pry')

RSpec.configure do |config|
  config.after(:each) do
    Employee.all().each() do |employee|
      employee.destroy()
    end
  end
end
