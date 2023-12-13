# frozen_string_literal: true

# Released under the MIT License.
# Copyright, 2021-2022, by Samuel Williams.

describe Sus::HaveDuration do
	it "can have a duration for a short sleep" do
		expect{sleep 0.01}.to have_duration(be <= 0.01)
	end
	
	it "can have a duration within a given range" do
		expect{sleep 0.01}.to have_duration(be_within(0.01..0.1))
	end
end
