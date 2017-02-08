require('capybara/rspec')
  require('./app')
  Capybara.app = Sinatra::Application
  set(:show_exceptions, false)

describe('the ping_pong path', {:type => :feature}) do
    it('processes the user entry and returns pingponged numbers') do
      visit('/')
      fill_in('pingput', :with => 15)
      click_button('Send')
      expect(page).to have_content([1, 2, "ping", 4, "pong", "ping", 7, 8, "ping", "pong", 11, "ping", 13, 14, "pingpong"])
    end
  end
  