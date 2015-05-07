var express = require('express');
var multer = require('multer');
var app = express();
var done = false;

app.use(express.static('./public'));

// respond with "hello world" when a GET request is made to the homepage
app.post('/upload',[multer({dest: './uploads/'}), function(req, res) {
    try {
        console.log(req.body.myfile);
        console.log(req.files);
        res.json(200);
    } catch (e) {
        console.log(e);
    }
}]);

app.get("/", function(req, res, next) {
    res.redirect('/uploader.html');
});

var server = app.listen(3000, function() {
    console.log('Example app listening at http://%s:%s', '127.0.0.1', 3000);
});