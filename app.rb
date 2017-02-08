require('sinatra')
  require('sinatra/reloader')
  require('./lib/ping_pong')
  also_reload('lib/**/*.rb')

  get('/') do
    erb(:index)
  end

  get('/pongout') do
    @pingput = params.fetch('pingput').ping_pong()
    erb(:pongout)
  end