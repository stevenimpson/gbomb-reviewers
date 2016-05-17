//server.js
var http = require("http");
var url = require("url");



function startServer(route, handle) {
	function onRequest(request, response){
		var pathname = url.parse(request.url).pathname;
		console.log("Request for " + pathname + " recieved.");

		request.setEncoding('utf8');
		var postData = "";
		var parsedData = "";

		//listens for POST data
		request.addListener('data', function(dataChunk) {


		});

		request.addListener('end', function() {

			route(handle, pathname, response, request)
		});

	}

	http.createServer(onRequest).listen(41674);
	console.log("Server has started.");
}

exports.startServer = startServer;
