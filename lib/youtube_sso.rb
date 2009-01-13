require 'net/http'

class YouTubeSSO
  class << self
    def valid?(username, password)
      target = 'sso'
      response = Net::HTTP.post_form(URI.parse('http://www.youtube.com/login'),
        {
          'username' => username,
          'password' => password,
          'current_form' => 'loginForm',
          'next' => "/#{target}",
          'action_login' => 'Log+In'
        })
      if "http://www.youtube.com/#{target}" == response['location']
        return true
      else
        return false
      end
    end
  end
end
