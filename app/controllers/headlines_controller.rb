class HeadlinesController < ApplicationController

require 'rest_client'
require 'rubygems'
require 'bing_translator'

	def index

#variables setup using Figaro gem
	@translator = BingTranslator.new(ENV["bing_translator_client_id"], ENV["bing_translator_client_secret"]) 
	kimono_headlines = ENV["kimono_headlines_key"]
	kimono_subheadlines = ENV["kimono_subheadlines_key"]

	@headline =  JSON.parse(RestClient.get(kimono_headlines))["results"]["collection1"]
	@subheadline =  JSON.parse(RestClient.get(kimono_subheadlines))["results"]["collection1"]

	# @json_url = @response["results"]["collection1"][0]["url"]
	# @json_href = @response["results"]["collection1"][0]["property1"]["href"]
	# @json_headline = @response["results"]["collection1"][0]["property1"]["text"]
	end

end
