//index.js
//bootstraps node server
var server = require("./server");
var router = require("./router");
var requestHandlers = require("./requestHandlers");
var makeTable = require("./makeTable");

//creates a handle object, associative array notation
var handle = {};
handle["/"] = requestHandlers.reqStart; //starts server when URL is accessed
handle["/start"] = requestHandlers.reqStart; //starts server when url /start accessed


//calls startServer function from server object
//passes route funstion from router
server.startServer(router.route, handle);
