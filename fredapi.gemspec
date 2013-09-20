require File.dirname(__FILE__) + "/lib/fredapi/version"

Gem::Specification.new do |s|
  s.name        = 'fredapi'
  s.version     = FREDAPI::VERSION
  s.version     = FREDAPI::VERSION + ".pre.#{ENV['TRAVIS_BUILD_NUMBER']}" if ENV['TRAVIS']
  s.date        = '2013-09-20'
  s.summary     = 'FRED API Ruby Wrapper'
  s.description = 'A Ruby wrapper for the FRED API'
  s.author      = 'Jonathan Chrisp'
  s.email       = 'jonathan.chrisp@gmail.com'
  s.license     = 'MIT'
  s.homepage    = 'https://github.com/jonathanchrisp/fredapi'
  s.required_ruby_version = ">= 1.9.2"

  s.add_development_dependency 'rspec', '~> 2.13.0'

  s.add_runtime_dependency 'faraday', '~> 0.8.7'
  s.add_runtime_dependency 'faraday_middleware', '~> 0.9.0'
  s.add_runtime_dependency 'hashie', '~> 2.0.5'

  s.files         = `git ls-files`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.test_files    = `git ls-files -- spec/*`.split("\n")
  s.require_paths = ['lib']
end