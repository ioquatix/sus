
require_relative 'context'

module Sus
	module It
		def self.build(parent, description, &block)
			base = Class.new(parent)
			base.extend(It)
			base.description = description
			base.define_method(:call, &block)
			return base
		end
		
		def print(output)
			output.print("it ", :it, self.description)
		end
		
		def call(assertions = Assertions.new)
			assertions.nested(self) do |assertions|
				instance = self.new(assertions)
				
				instance.around do
					instance.call
				end
			end
		end
	end
	
	module Context
		def it(...)
			@children << It.build(self, ...)
		end
	end
end