//requestHandlers.js
//handles different types of requests for the server
var fs = require("fs");




//main menu
function reqStart(response, postData){
	console.log("Request handler start was called");
	fs.readFile('index.html', function(err, data) {
		response.writeHead(200, {"Content-Type": "text/html", "Content-Length": data.length});
		response.write(data);
		response.end();
	})

}

exports.reqStart = reqStart;
