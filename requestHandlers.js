//requestHandlers.js
//handles different types of requests for the server
var fs = require("fs");
var getReviews = require("./getReviews");


function showPage(pagename, response){

	var pageToOpen = pagename + ".html";

	fs.readFile(pageToOpen, function(err, data) {
		response.writeHead(200, {"Content-Type": "text/html", "Content-Length": data.length});
		response.write(data);
		response.end();
	});
}

//main menu
function reqStart(response, postData){
	showPage("index", response);

}

//gets review data and displays
function reqReviews(response, postData){

	getReviews.getReviews();

	setTimeout(function() {
	  showPage("result", response);
	}, 12000);
	
	

	

	
	
}

exports.reqStart = reqStart;
exports.reqReviews = reqReviews;
