# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eco_compress/version'

Gem::Specification.new do |spec|
  spec.name          = "eco_compress"
  spec.version       = EcoCompress::VERSION
  spec.authors       = ["Tatsuo Kaniwa"]
  spec.email         = ["tatsuo@kaniwa.biz"]
  spec.description   = %q{Mnify Eco tempalte}
  spec.summary       = %q{Mnify Eco tempalte}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = `git ls-files -- {spec}/*`.split("\n")
  spec.require_paths = ["lib"]

  spec.add_dependency "htmlcompressor"
  spec.add_dependency "eco"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "execjs"
end
