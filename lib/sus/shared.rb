# frozen_string_literal: true

# Released under the MIT License.
# Copyright, 2021-2022, by Samuel Williams.

require_relative 'context'

module Sus
	module Shared
		attr_accessor :name
		attr_accessor :block
		
		def self.build(name, block)
			base = Class.new
			base.extend(Shared)
			base.name = name
			base.block = block
			
			return base
		end
		
		def included(base, *arguments, **options)
			base.class_exec(*arguments, **options, &self.block)
		end
	end
	
	def self.Shared(name, &block)
		Shared.build(name, block)
	end
end
