class HeadlinesController < ApplicationController

	require 'rest_client'

	def index

	if Rails.env.production?
		kimono_headlines = "https://www.kimonolabs.com/api/2igf4iz2?apikey=DtN9L9ZLkBTHdqfq50SeqG1JdbHuqpPX"
		kimono_subheadlines = "https://www.kimonolabs.com/api/dpzfoa9e?apikey=DtN9L9ZLkBTHdqfq50SeqG1JdbHuqpPX"
	else
		#kimono_url = "http://www.kimonolabs.com/api/daal66ou?apikey=DtN9L9ZLkBTHdqfq50SeqG1JdbHuqpPX"
		kimono_headlines = "http://www.kimonolabs.com/api/2igf4iz2?apikey=DtN9L9ZLkBTHdqfq50SeqG1JdbHuqpPX"
		kimono_subheadlines = "http://www.kimonolabs.com/api/dpzfoa9e?apikey=DtN9L9ZLkBTHdqfq50SeqG1JdbHuqpPX"
	end

	@headline =  JSON.parse(RestClient.get(kimono_headlines))["results"]["collection1"]
	@subheadline =  JSON.parse(RestClient.get(kimono_subheadlines))["results"]["collection1"]

	# @json_url = @response["results"]["collection1"][0]["url"]
	# @json_href = @response["results"]["collection1"][0]["property1"]["href"]
	# @json_headline = @response["results"]["collection1"][0]["property1"]["text"]
	end

end
