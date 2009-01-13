require 'net/http'
require 'uri'
require 'rubygems'
require 'hpricot'

class YouTubeSSO
  class << self
    def valid?(username, password)
      response = Net::HTTP.post_form(URI.parse('http://www.youtube.com/login'),
        {
          'username' => username,
          'password' => password,
          'current_form' => 'loginForm',
          'next' => '/',
          'action_login' => 'Log+In'
        })
      page = Hpricot(response.body)
      denial = page.search("div[@class='errorBox']")
      acceptance = page.search("a[@class='noul']")
      if denial.empty?
        if acceptance.empty?
          return page # fubar
        else
          return true
        end
      else
        return false
      end
    end
  end
end
