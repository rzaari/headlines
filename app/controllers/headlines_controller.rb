class HeadlinesController < ApplicationController

	require 'rest_client'

	def index

	kimono_url = "http://www.kimonolabs.com/api/daal66ou?apikey=DtN9L9ZLkBTHdqfq50SeqG1JdbHuqpPX"

	@response =  JSON.parse(RestClient.get(kimono_url))["results"]["collection1"]

	# @json_url = @response["results"]["collection1"][0]["url"]
	# @json_href = @response["results"]["collection1"][0]["property1"]["href"]
	# @json_headline = @response["results"]["collection1"][0]["property1"]["text"]
	end

end
