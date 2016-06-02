var xslt4node = require('xslt4node');

var http = require('http');
var fs = require('fs');


var file = fs.createWriteStream("reviews.xml");


var request = http.get({
  host: 'www.giantbomb.com',
  path: '/api/reviews/?api_key=5b0c91a1791a7fca1d1477195cb6b0ddc1efdfe2&sort=original_release_date:desc&format=xml&limit=100',
  headers: {
    'User-Agent': 'Steven-ICT375-project'
  }
}, function(response) {
     response.pipe(file);
});


var config = {
    xsltPath: 'reviewtree.xsl',
    sourcePath: 'reviews.xml',
    result: 'result.html',
    params: {
        discount: '2014/08/01'
    },
    props: {
        indent: 'yes'
    }
};


file.on('close', function(){

  console.log('file writing finished');
  xslt4node.transform(config, function (err) {
    if (err) {
        console.log(err);
    }
})
});

// xslt4node.transform(config, function (err) {
//     if (err) {
//         console.log(err);
//     }
// });