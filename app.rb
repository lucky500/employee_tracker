
require('sinatra')
require('sinatra/reloader')
require("sinatra/activerecord")
also_reload('lib/**/*.rb')
require('./lib/division')
require('./lib/employee')
require("pg")


get('/') do
  @divisions = Division.all()
  @employees = Employee.all()
  erb(:index)
end

post('/') do
  division_name = params.fetch('division_name')
  division = Division.new({:division_name => division_name, :id => nil})
  division.save()
  erb(:index)
end
