# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "broadcast/version"

Gem::Specification.new do |s|
  s.name        = "broadcast-core"
  s.version     = Broadcast::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Marcin Bunsch", "Antek Piechnik"]
  s.email       = ["marcin@futuresimple.com"]
  s.homepage    = "http://github.com/futuresimple/broadcast"
  s.summary     = %q{A broadcasting microframework making publishing of messages to different services easy. This version does not include dependencies.}
  s.description = %q{A broadcasting microframework making publishing of messages to different services easy. This version does not include dependencies.}

  s.add_dependency 'hashie'

  # broadcast-core is broadcast, but it does not have dependencies

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
