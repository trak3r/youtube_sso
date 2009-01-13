Gem::Specification.new do |s|
  s.name     = "youtube_sso"
  s.version  = "0.0.1"
  s.date     = "2000-01-13"
  s.summary  = "Poor-man's single sign-on for YouTube"
  s.email    = "youtube_sso@rudiment.net"
  s.homepage = "http://github.com/trak3r/youtube_sso"
  s.description = "Poor-man's single sign-on for YouTube"
  s.has_rdoc = false
  s.authors  = ["Thomas 'Teflon Ted' Davis"]
  s.files    = ["README.txt","lib/youtube_sso.rb","bin/youtube_sso"]
  s.test_files = []
  s.rdoc_options = []
  s.extra_rdoc_files = []
  s.add_dependency("hpricot", [">= 0.6.164"])
end