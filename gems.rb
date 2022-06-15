# frozen_string_literal: true

source "https://rubygems.org"

gemspec

gem "bake"
gem "covered", "~> 0.16"

group :maintenance, optional: true do
	gem "bake-modernize"
	gem "bake-gem"
	
	gem "utopia-project"
end
