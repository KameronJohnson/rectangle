require('sinatra')
require('sinatra-reloader')
also_reload('lib/**/**.rb')
require('./lib/rectangle')

get('/') do #our homepage or root route
  erb(:index)
end

get('/square') do #our results page
  length = params.fetch('length')
  width = params.fetch('width')
  @rectangle = Rectangle.new(length, width)
  erb(:square)
end
