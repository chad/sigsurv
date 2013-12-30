# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sigsurv/version'

Gem::Specification.new do |spec|
  spec.name          = "sigsurv"
  spec.version       = Sigsurv::VERSION
  spec.authors       = ["Chad Fowler"]
  spec.email         = ["chad@chadfowler.com"]
  spec.summary       = %q{This is a stupid version of Ward's Signature Survey which gives a visual indication of code complexity per file.}
  spec.description   = %q{run "sigsurv" to scan the local directory's ruby files. See http://c2.com/doc/SignatureSurvey/ for more info.}
  spec.homepage      = "http://github.com/chad/sigsurv"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
