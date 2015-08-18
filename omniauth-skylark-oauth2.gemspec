require File.expand_path('../lib/omniauth-skylark/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ['hw93']
  gem.email         = ['676018683@qq.com']
  gem.summary       = %q{OmniAuth OAuth2 strategy for Skylark.}
  gem.description   = %q{OmniAuth OAuth2 strategy for Skylark.}
  gem.homepage      = 'https://github.com/hw676018683/omniauth-skylark-oauth2'
  gem.license       = 'MIT'

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = 'omniauth-skylark-oauth2'
  gem.require_paths = ['lib']
  gem.version       = OmniAuth::Skylark::VERSION

  gem.add_dependency 'omniauth', '~> 1.0'
  gem.add_dependency 'omniauth-oauth2', '~> 1.1'
end