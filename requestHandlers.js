//requestHandlers.js
//handles different types of requests for the server
var fs = require("fs");




//main menu
function reqStart(response, postData){
	console.log("Request handler start was called");
		response.writeHead(200, {"Content-Type": "text/html"});
		response.write("Welcome to Mario Kart!");
		response.end();

}

exports.reqStart = reqStart;
