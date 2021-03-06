# frozen_string_literal: true

source "https://rubygems.org"

gemspec

gem "covered", "~> 0.16"
# gem "covered", path: "../covered"

group :maintenance, optional: true do
	gem "bake-modernize"
	gem "bake-gem"
	
	gem "utopia-project"
end
