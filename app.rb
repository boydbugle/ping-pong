require('sinatra')
  require('sinatra/reloader')
  require('./lib/ping_pong')
  also_reload('lib/**/*.rb')

  get('/') do
    erb(:index)
  end

  get('/pongout') do
    @ponginput = params.fetch('ponginput').ping_pong()
    erb(:pongout)
  end