request = require('request')
cheerio = require('cheerio')

parse_page = (error, response, body) ->
	if (error or response.statusCode != 200)
		console.log(error)
	else
		$ = cheerio.load(body)
		$('#siteTable a.title').each (k,v) =>
			console.log($(v).attr('href'))
request.get("http://www.reddit.com", parse_page)