//index.js
//bootstraps node server
var server = require("./server");
var router = require("./router");
var requestHandlers = require("./requestHandlers");
var getReviews = require("./getReviews");

//creates a handle object, associative array notation
var handle = {};
handle["/"] = requestHandlers.reqStart; //starts server when URL is accessed
handle["/start"] = requestHandlers.reqStart; //starts server when url /start accessed
handle["/reviews"] = requestHandlers.reqReviews; //begins get reviews function


//calls startServer function from server object
//passes route funstion from router
server.startServer(router.route, handle);
