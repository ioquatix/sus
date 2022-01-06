# frozen_string_literal: true

require_relative "lib/sus/version"

Gem::Specification.new do |spec|
	spec.name = "sus"
	spec.version = Sus::VERSION
	
	spec.summary = "A fast and scalable test runner."
	spec.authors = ["Samuel Williams"]
	spec.license = "MIT"
	
	spec.homepage = "https://github.com/ioquatix/sus"
	
	spec.metadata = {
		"funding_uri" => "https://github.com/sponsors/ioquatix/",
	}
	
	spec.files = Dir.glob('{bin,lib}/**/*', File::FNM_DOTMATCH, base: __dir__)
	
	spec.executables = ["sus", "sus-parallel"]
	
	spec.required_ruby_version = ">= 2.7.0"
end
